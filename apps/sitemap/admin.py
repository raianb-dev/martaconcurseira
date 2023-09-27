from django.contrib import admin

# Register your models here.
from django.contrib import admin
from .models import Sitemap 

class SitemapAdmin(admin.ModelAdmin):
    list_display = ['id', 'name']  

admin.site.register(Sitemap, SitemapAdmin)