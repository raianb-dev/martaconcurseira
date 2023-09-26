from django.contrib import admin
from .models import Sitemap

class SitemapAdmin(admin.ModelAdmin):
    list_display = ['id', 'name']  # Campos para exibir na lista de objetos

# Registrar o modelo e a classe de administração
admin.site.register(Sitemap, SitemapAdmin)

