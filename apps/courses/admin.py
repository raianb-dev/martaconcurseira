from django.contrib import admin

from .models import Teacher, Course, Platform

# Register your models here.


@admin.register(Teacher)
class TeacherAdmin(admin.ModelAdmin):
    list_display = ['name', 'background', 'created_at', 'updated_at']
    search_fields = ['name']


@admin.register(Course)
class CourseAdmin(admin.ModelAdmin):
    list_display = ['name', 'teacher', 'price', 'created_at', 'updated_at']
    list_filter = ['platform', 'teacher']
    search_fields = ['name', 'teacher']


@admin.register(Platform)
class PlataformAdmin(admin.ModelAdmin):
    list_display = ['name', 'created_at', 'updated_at']
    search_fields = ['name']
