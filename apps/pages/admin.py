from django.contrib import admin

from .models import AboutUs, Video

# Register your models here.


@admin.register(AboutUs)
class AboutUsAdmin(admin.ModelAdmin):
    list_display = ['title_page', 'created_at', 'updated_at']


@admin.register(Video)
class VideoAdmin(admin.ModelAdmin):
    list_display = ['title', 'created_at', 'updated_at']
    search_fields = ['title']
    readonly_fields = ['slug']
