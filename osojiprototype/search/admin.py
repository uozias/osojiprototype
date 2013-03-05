from search.models import Area, Customer, CleanupRequest, CleanupPlaceKind, CleanupPlace, InhabitedArea, PreferredDate, Cleaner
from django.contrib import admin

admin.site.register(Area)
admin.site.register(Customer)
admin.site.register(CleanupRequest)
admin.site.register(CleanupPlaceKind)
admin.site.register(CleanupPlace)
admin.site.register(InhabitedArea)
admin.site.register(PreferredDate)
admin.site.register(Cleaner)