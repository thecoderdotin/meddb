from django.conf.urls import patterns, include, url
from views import MedicinesList, IndividualMedicine, IndividualProcurement, IndividualProduct, IndividualManufacturer

urlpatterns = patterns('reports.views',
    #url(r'^reference_report/$', 'reference_report', name='reference_report'),
    url(r'^$', MedicinesList.as_view(), name='landing_page'),
    url(r'^medicine/(?P<medicine_id>\d+)/$', IndividualMedicine.as_view(), name='individual_medicine'),
    url(r'^medicine/(?P<medicine_id>\d+)/procurement/(?P<procurement_id>\d+)/$', IndividualProcurement.as_view(), name='individual_procurement'),
    url(r'^medicine/(?P<medicine_id>\d+)/product/(?P<product_id>\d+)/$', IndividualProduct.as_view(), name='individual_product'),
    url(r'^manufacturer/(?P<manufacturer_id>\d+)/$', IndividualManufacturer.as_view(), name='individual_manufacturer'),
    url(r'^reports/price_grid/(?P<year>\d+)/$', 'medicine_grid', name='medicine_grid'),
    url(r'^reports/countries_per_medicine/$', 'countries_per_medicine', name='countries_per_medicine'),
    url(r'^reports/export/$', 'procurement_export', name='procurement_export'),
    url(r'^reports/export/by_procurement/$', 'export_by_procurement', name='export_by_procurement'),
    url(r'^reports/export/all_countries/$', 'export_all_countries', name='export_all_countries'),
    url(r'^reports/export/hli/$', 'export_hli', name='export_hli'),
)

