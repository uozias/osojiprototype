# -*- coding: utf-8 -*-

from django.db import models
from django.core.files import File
import base64
from django.utils import dateformat
from datetime import datetime


class Area(models.Model):
   prefecture = models.CharField(max_length=64)
   
   def __unicode__(self):
       return self.prefecture

class User(models.Model):
    mail_address = models.CharField(max_length=128)
    first_name = models.CharField(max_length=128)
    first_name_reading = models.CharField(max_length=128)
    family_name = models.CharField(max_length=128)
    family_name_reading = models.CharField(max_length=128)
    login_user_name = models.CharField(max_length=128)
    password = models.CharField(max_length=128)
    address =  models.TextField()
    telephone_number = models.IntegerField()
    sign_up_state = models.CharField(max_length=64)

    def __unicode__(self):
        return self.first_name
        
class Customer(User):
    dummy = models.IntegerField(default=1)

class Cleaner(User):
    company_name = models.CharField(max_length=128)
    company_mame_reading = models.CharField(max_length=128)
    company_telephone_number = models.CharField(max_length=128)
    company_url =  models.TextField()
    schedule_share = models.CharField(max_length=128)
    request_from_others = models.BooleanField(default=False)


class CleanupRequest(models.Model):
    customer = models.ForeignKey(Customer)
    created_at = models.DateTimeField(auto_now_add=True)
    delivery = models.DateTimeField()
    maximum_price = models.IntegerField()
    comment =  models.TextField()
    
    def __unicode__(self):
        return dateformat.format(self.created_at, 'Y/n/d H:i:s') + u' /' + self.customer.first_name

class CleanupPlaceKind(models.Model):
    name = models.CharField(max_length=128)
    def __unicode__(self):
        return self.name
    

class CleanupPlace(models.Model):
    cleanup_request = models.ForeignKey(CleanupRequest)
    cleanup_place_kind = models.ForeignKey(CleanupPlaceKind)
    CHOICES = (
        (1, '☆'),
        (2, '☆☆'),
        (3, '☆☆☆'),
        (4, '☆☆☆☆'),
        (5, '☆☆☆☆☆'),
    )
    dirt_level = models.IntegerField(choices= CHOICES)
    CHOICES2 = (
        (1, '×'),
        (2, '××'),
        (3, '×××'),
        (4, '××××'),
        (5, '×××××'),
    )
    hope_level = models.IntegerField(choices= CHOICES2)
    
    def __unicode__(self):
        return self.cleanup_place_kind.name


#custom field for picture
class Base64Field(models.Field):
    description = 'Base64 Field'
 
    def get_internal_type(self):
        return "TextField"
 
    def clean(self, value, model_instance):
        if isinstance(value, File):
            model_instance.name = value.name
            return base64.b64encode(value.read())
        return value
 
    def formfield(self, **kwargs):
        defaults = {'form_class': forms.FileField}
        if 'initial' in kwargs:
            defaults['required'] = False
        defaults.update(kwargs)
        return super(Base64Field, self).formfield(**defaults)

class Pitcure(models.Model):
    cleanup_place = models.ForeignKey(CleanupPlace)
    data = Base64Field()

class InhabitedArea(models.Model):
    area =models.ForeignKey(Area)
    user =models.ForeignKey(User)
    
    def __unicode__(self):
        return self.area.prefecture

class Bid(models.Model):
    cleanup_request = models.ForeignKey(CleanupRequest)
    cleaner = models.ForeignKey(Cleaner)
    created_at = models.DateTimeField(auto_now_add=True)
    asking_price = models.IntegerField()
    start_date = models.DateTimeField()
    end_date = models.DateTimeField()
    dead = models.BooleanField(default=False)
    
class PreferredDate(models.Model):
    cleanup_request = models.ForeignKey(CleanupRequest)
    start_date = models.DateTimeField()
    end_date = models.DateTimeField()

class AvailableDate(models.Model):
    bid = models.ForeignKey(Bid)
    start_date = models.DateTimeField()
    end_date = models.DateTimeField()
 
class Contract(models.Model):
    bid = models.ForeignKey(Bid)
    cleanup_request = models.ForeignKey(CleanupRequest)
    price = models.IntegerField()
    address =  models.TextField()
    payment_state = models.CharField(max_length=128) 
    operation_state = models.CharField(max_length=128)
    start_date = models.DateTimeField()
    end_date = models.DateTimeField()
    overall_evaluation = models.IntegerField()
    technique_evaluation = models.IntegerField()
    price_evaluation = models.IntegerField()
    service_evaluation = models.IntegerField()
    


class AvailablePlace(models.Model):
    cleaner = models.ForeignKey(Cleaner)
    cleanup_place_kind = models.ForeignKey(CleanupPlaceKind)

class Job(models.Model):
    name = models.CharField(max_length=128)
    start_date = models.DateTimeField()
    end_date = models.DateTimeField()
    CHOICES = (
        ('OFF', 'Off'),
        ('CLEAN', 'Clean'),
        ('OTHER', 'Other'),
    )
    kind = models.CharField(max_length=5, choices=CHOICES)
    address =  models.TextField()
    comment =  models.TextField()



class QuestionCard(models.Model):
   cleanup_request = models.ForeignKey(CleanupRequest)
   text =  models.TextField()
   created_at = models.DateTimeField(auto_now_add=True)
   parent = models.ForeignKey('self')
   cleaner = models.ForeignKey(Cleaner)

class AnswerCard(models.Model):
   cleanup_request = models.ForeignKey(CleanupRequest)
   text =  models.TextField()
   created_at = models.DateTimeField(auto_now_add=True)
   parent = models.ForeignKey('self')
   customer = models.ForeignKey(Customer)