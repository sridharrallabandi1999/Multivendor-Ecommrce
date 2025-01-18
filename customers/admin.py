from django.apps import AppConfig
from django.contrib import admin

# Register your models here.

class CustomersConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'customers'
