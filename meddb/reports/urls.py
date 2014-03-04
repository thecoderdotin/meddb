from django.conf.urls import patterns, include, url
from views import IndividualMedicine

urlpatterns = patterns('reports.views',
    #url(r'^reference_report/$', 'reference_report', name='reference_report'),
    url(r'^$', 'medicines_list', name='landing_page'),
    url(r'^test/$', IndividualMedicine.as_view(), name='individual_medicine'),
    url(r'^reports/price_grid/(?P<year>\d+)/$', 'medicine_grid', name='medicine_grid'),
    url(r'^reports/countries_per_medicine/$', 'countries_per_medicine', name='countries_per_medicine'),
    url(r'^reports/export/$', 'procurement_export', name='procurement_export'),
    url(r'^reports/export/by_procurement/$', 'export_by_procurement', name='export_by_procurement'),
    url(r'^reports/export/all_countries/$', 'export_all_countries', name='export_all_countries'),
    url(r'^reports/export/hli/$', 'export_hli', name='export_hli'),
)

