# -*- coding: utf-8 -*-


from django.template import Context, loader, RequestContext
from django.http import HttpResponse, HttpResponseRedirect, Http404
from django.shortcuts import render_to_response, get_object_or_404
from search.models import CleanupRequest, CleanupPlace, CleanupPlaceKind, PreferredDate, Customer
from search.forms import CleanupRequestForm, CleanupPlaceForm, CleanupPlaceFormSet
from django.core.urlresolvers import reverse
    
def new(request):
    #�|���˗����̂Ƃ��̉ӏ�������������ĂȂ��ƕۑ�����Ȃ�
    if request.method == 'POST':
        cleanup_request_form = CleanupRequestForm(request.POST, prefix='cleanup_request')
        
        if cleanup_request_form.is_valid():  #�|���˗��̓��͂�������������
            cr=cleanup_request_form.save(commit=False)
            cleanup_place_form_set = CleanupPlaceFormSet(request.POST, prefix='cleanup_places')
            if cleanup_place_form_set.is_valid(): #�|���ӏ��̓��͂�������������
                #todo cps����̏ꍇ�A���̉�ʂɖ߂�����
                cr.save()
                for cpf in cleanup_place_form_set:
                    cp = cpf.save(commit=False)
                    cp.cleanup_request=cr
                    cp.save()
                return HttpResponseRedirect(reverse('search.views.detail',args=(cr.id,)))
    else:
        cleanup_request = CleanupRequest(delivery="2013-04-01 00:00:00", maximum_price="10000")
        cleanup_request_form = CleanupRequestForm(instance=cleanup_request, prefix='cleanup_request')
        cleanup_place_form_set = CleanupPlaceFormSet( prefix='cleanup_places')
    return render_to_response('new.html', {'cleanup_request_form': cleanup_request_form,  'cleanup_place_form_set' :  cleanup_place_form_set}, context_instance=RequestContext(request))


def detail(request, cleanup_request_id):
    try:
        r = CleanupRequest.objects.get(pk=cleanup_request_id)
        ps = CleanupPlace.objects.filter(cleanup_request_id__exact=cleanup_request_id)
    except CleanupRequest.DoesNotExist:
        raise Http404
    return render_to_response('detail.html', {'cleanup_request': r, 'cleanup_places': ps})
    
