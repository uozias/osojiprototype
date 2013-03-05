from django.conf.urls import patterns, include, url
from django.views.generic import DetailView, ListView
from search.models import CleanupRequest

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',    
    #cleanup request
    url(r'^new/$', 'search.views.new'),
    url(r'^$', 
    ListView.as_view(
            queryset=CleanupRequest.objects.order_by('-created_at')[:5],
            context_object_name='latest_cleanup_request_list',
            template_name='index.html')),
    url(r'^/(?P<cleanup_request_id>\d+)','search.views.detail'),
)
