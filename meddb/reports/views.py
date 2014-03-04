from __future__ import division
from itertools import groupby
from dateutil import parser
import csv
import operator
from collections import defaultdict, OrderedDict

from django.http import Http404
from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic.base import TemplateView

from registrations import models as reg_models

sadc_countries = "ANG BWA COD LES MAW MUS MOZ NAM SEY ZAF SWZ TZA ZMB ZWE".split()


def medicines_list(request):
    send_dict = {}

    try:
        medicines = reg_models.Medicine.objects.all()
    except:
        medicines = []
    medicines = sorted(
        medicines,
        key=lambda k: k.display_name().lower())
    send_dict["medicines"] = medicines
    return render(request, "public_pages/listing/meddb.html", send_dict)

class IndividualMedicine(TemplateView):
    template_name = "public_pages/listing/individual_medicine.html"

    def get_context_data(self, **kwargs):
        return {'name': 'Hello World'}


def get_procurements(start_date, end_date):
    return reg_models.Procurement.objects.filter(
        end_date__gte=start_date,
        start_date__lte=end_date
    ).order_by("product__medicine__name")

def medicine_grid(request, year):
    
    class MedicinePrices(object):
        def __init__(self, procurements):
            self.prices = {}
            self.procurements = procurements

        def lowest_price(self, medicine):
            if not medicine in self.prices:
                self.prices[medicine] = self.procurements.medicine(medicine).cheapest()

            return self.prices[medicine]

            
    response = HttpResponse(content_type="text/csv")
    response["Content-Disposition"] = "attachment; filename=prices_%s.csv" % year
    writer = csv.writer(response)

    procurements = reg_models.Procurement.objects.in_year(int(year))
    cache = MedicinePrices(procurements)
    writer.writerow([
        "Medicine", "Country", "Unit Price (USD)", "Volume", 
        "Total Value (USD)", "Lowest Price (USD)", "Potential Savings (USD)"
    ])

    for procurement in procurements:
        unit_price = procurement.price_per_unit
        lowest_price = cache.lowest_price(procurement.product.medicine)
        total_value = unit_price * procurement.volume
        potential_savings = total_value - (procurement.volume * lowest_price)

        writer.writerow([
            procurement.product.medicine, procurement.country, procurement.price_per_unit, 
            procurement.volume, total_value, lowest_price, potential_savings
        ])
    return response

def procurement_list(procurements):
    proclist = OrderedDict()
    for procurement in procurements:
        medicine = procurement.product.medicine
        medprocs = proclist.setdefault(medicine, [])
        medprocs.append(procurement)
    
    return proclist

procurement_countries = [
    "Angola", "Botswana", "DRC", "Lesotho", "Malawi", "Mauritius",
    "Mozambique", "Namibia", "Seychelles", "South Africa", "Swaziland",
    "Tanzania", "Zambia", "Zimbabwe"
]

def countries_per_medicine(request):
    response = HttpResponse(content_type="text/csv")
    response["Content-Disposition"] = "attachment; filename=countries_per_medicine.csv"
    writer = csv.writer(response)

    writer.writerow(["Medicine"] + procurement_countries)
    for med in sorted(reg_models.Medicine.objects.all(), key=lambda x: unicode(x)):
        med_name = unicode(med)
        count = [med_name]
        for country in procurement_countries:
            products = reg_models.Product.objects.filter(
                procurement__country__name=country, medicine=med
            )
            count.append(products.count())
        writer.writerow(count)
    return response

def procurement_export(request):
    response = HttpResponse(content_type="text/csv")
    response["Content-Disposition"] = "attachment; filename=all_procurements.csv"
    writer = csv.writer(response)

    writer.writerow(["Country", "Medicine", "Pack", "Supplier", "Incoterm", "Price (USD) / Unit", "Volume", "Start Date", "End Date"])
    for procurement in reg_models.Procurement.objects.all():
        writer.writerow([
            procurement.country,
            procurement.product.medicine,
            procurement.container,
            procurement.supplier,
            procurement.incoterm,
            procurement.price_per_unit,
            procurement.volume,
            procurement.start_date,
            procurement.end_date
        ])
    
    return response

def median(vals):
    vals = sorted(vals)
    l = len(vals)
    if l % 2 == 0:
        return (vals[l // 2] + vals[(l - 1) // 2]) / 2
    else:
        return vals[l // 2]
    
def export_by_procurement(request):
    try:
        start_date = parser.parse(request.GET["start_date"])
        end_date = parser.parse(request.GET["end_date"])
    except IndexError:
        raise Http404 

    response = HttpResponse(content_type="text/csv")
    response["Content-Disposition"] = "attachment; filename=stats_by_medicine.csv"
    writer = csv.writer(response)
    
    writer.writerow(["Medicine", "Median Price", "Minimum Price", "Maximum Price", "High/Low Ratio", "Median/MSH", "# Procurements"])

    medicines = sorted(reg_models.Medicine.objects.all(), key=lambda x: unicode(x))

    procurements = reg_models.Procurement.objects.filter(
        start_date__gte=start_date, start_date__lte=end_date
    )
      
    for medicine in medicines:
        med_procurements = procurements.filter(product__medicine=medicine)
        prices = [p.price_per_unit for p in med_procurements]
        try:
            msh = reg_models.MSHPrice.objects.get(medicine=medicine)
            if len(prices) > 0:
                num_procurements = len(prices)
                min_price = min(prices)
                max_price = max(prices)
                median_price = median(prices)
                maxmin_ratio = max_price / min_price
                msh_ratio = median_price / msh.price
                writer.writerow([unicode(medicine), median_price, min_price, max_price, maxmin_ratio, msh_ratio, num_procurements])
        except reg_models.MSHPrice.DoesNotExist:
            pass
    return response

def export_all_countries(request):
    try:
        start_date = parser.parse(request.GET["start_date"])
        end_date = parser.parse(request.GET["end_date"])
    except IndexError:
        raise Http404 

    response = HttpResponse(content_type="text/csv")
    response["Content-Disposition"] = "attachment; filename=stats_by_country.csv"
    writer = csv.writer(response)
    
    writer.writerow(["Country", "Medicine", "Pack Size", "MSH Ratio", "# Procurements"])
     
    procurements = reg_models.Procurement.objects.filter(
        start_date__gte=start_date, start_date__lte=end_date
    )
    medicines = sorted(reg_models.Medicine.objects.all(), key=lambda x: unicode(x))
    for country in sadc_countries:
        country_procurements = procurements.filter(country__code=country)
        if country_procurements.count() == 0:
            continue

        ratios = []
        for medicine in medicines:
            try:
                msh = reg_models.MSHPrice.objects.get(medicine=medicine)
                med_procurements = country_procurements.filter(product__medicine=medicine).order_by("container")
                groups = groupby(med_procurements, lambda x : x.container)
                for key, it in groups:
                    prices = [p.price_per_unit for p in it]
                    msh_ratio = median(prices) / msh.price
                    writer.writerow([country, medicine, key, msh_ratio, len(prices)])
                    ratios.append(msh_ratio)
                
            except reg_models.MSHPrice.DoesNotExist:
                pass

        writer.writerow([])
        writer.writerow(["Median MSH Ratio", median(ratios)])
        writer.writerow([])
            
    return response

def export_hli(request):
    try:
        start_date = parser.parse(request.GET["start_date"])
        end_date = parser.parse(request.GET["end_date"])
    except IndexError:
        raise Http404 

    countries = reg_models.Country.objects.filter(code__in=sadc_countries).order_by("name")
    procurements = reg_models.Procurement.objects.filter(
        start_date__gte=start_date, start_date__lte=end_date
    )

    medicines = reg_models.Medicine.objects.filter(id__in=[26, 42, 81, 83, 146]) 

    response = HttpResponse(content_type="text/csv")
    response["Content-Disposition"] = "attachment; filename=hli-%s_%s.csv" % (
        start_date.strftime("%Y-%m-%d"), 
        end_date.strftime("%Y-%m-%d")
    )
    writer = csv.writer(response)

    def header():
        row = ["Medicine", "Unit", "MSH (2012) per unit"]
        for country in countries:
            row.append(country.name)
            row.append("")
        return row

    def subheader():
        row = ["", "", "Price per unit"]
        for country in countries:
            row.append("Price per unit")
            row.append("Price ratio")
        return row

    def medicine_rows(medicine):
        rows = []
        medicine_procurements = procurements.filter(product__medicine=medicine).order_by("country")
        containers = reg_models.Container.procurement_set
        
        return list(set(containers))
        for p in medicine_procurements:
            for country in countries:
                row = [unicode(medicine), unicode(medicine.dosageform), medicine.msh]
                country_procurements = medicine_procurements.filter(country=country)
                if country_procurements.count() == 0:
                    row.append([""])
                    row.append([""])
                for cp in country_procurements:
                   row.append(cp.price_per_unit) 
                   row.append(cp.msh_ratio)
                
            rows.append(row)
        return rows
        
    writer.writerow(header())
    writer.writerow(subheader())
    for medicine in medicines:
        writer.writerows(medicine_rows(medicine))
    
    return response
