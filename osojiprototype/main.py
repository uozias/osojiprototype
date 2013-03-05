import os
# specify the name of your settings module
os.environ['DJANGO_SETTINGS_MODULE'] = 'osojiprototype.settings'

import django.core.handlers.wsgi
app = django.core.handlers.wsgi.WSGIHandler()