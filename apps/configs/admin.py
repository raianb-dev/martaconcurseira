from django.contrib import admin

from .models import Logo, SEOHome, GoogleAnalytics, Scripts,TitleBar

# Register your models here.
@admin.register(TitleBar)
class TitleBarAdmin(admin.ModelAdmin):
    list_display = ['title']


@admin.register(Logo)
class LogoAdmin(admin.ModelAdmin):
    list_display = ['title', 'image']


@admin.register(Scripts)
class ScriptsAdmin(admin.ModelAdmin):
    list_display = ['name', 'place', 'is_active']


admin.site.register(SEOHome)
admin.site.register(GoogleAnalytics)
