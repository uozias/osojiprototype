# -*- coding: utf-8 -*-

from django import forms
from django.forms import ModelForm
from django.forms.models import modelformset_factory, formset_factory

from search.models import CleanupRequest, CleanupPlace, CleanupPlaceKind, PreferredDate, Customer

class CleanupRequestForm(ModelForm):
    customer = forms.ModelChoiceField(queryset=Customer.objects.all(),label=u'あなた') #todoその時のユーザにする
    delivery = forms.DateTimeField(label=u'入札期限')
    maximum_price = forms.IntegerField(label=u'上限金額')
    comment = forms.CharField(widget=forms.Textarea, label=u'コメント欄')
    class Meta:
        model = CleanupRequest

class CleanupPlaceForm(ModelForm):
    cleanup_place_kind = forms.ModelChoiceField(queryset=CleanupPlaceKind.objects.all(),label=u'掃除箇所')
    CHOICES2 = (
        ("-",'----'),
        (1, '×'),
        (2, '××'),
        (3, '×××'),
        (4, '××××'),
        (5, '×××××'),
    )
    dirt_level = forms.IntegerField(widget=forms.Select(choices= CHOICES2), label=u'現状汚さレベル')
    CHOICES = (
        ("-",'----'),
        (1, '☆'),
        (2, '☆☆'),
        (3, '☆☆☆'),
        (4, '☆☆☆☆'),
        (5, '☆☆☆☆☆'),
    )
    hope_level = forms.IntegerField(widget=forms.Select(choices= CHOICES), label=u'期待お掃除レベル')
    class Meta:
        model = CleanupPlace
        exclude=('cleanup_request')
        
        
CleanupPlaceFormSet = formset_factory(CleanupPlaceForm, max_num=4, extra=1)
#CleanupPlaceFormSet = modelformset_factory(CleanupPlace, max_num=4, extra=2, exclude=('cleanup_request'))