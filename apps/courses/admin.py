from django.contrib import admin

from .models import Teacher, Course, Platform

# Register your models here.


@admin.register(Teacher)
class TeacherAdmin(admin.ModelAdmin):
    list_display = ['name', 'background']


@admin.register(Course)
class CourseAdmin(admin.ModelAdmin):
    list_display = ['name', 'teacher', 'price']
    list_filter = ['platform', 'teacher']


@admin.register(Platform)
class PlataformAdmin(admin.ModelAdmin):
    list_display = ['name']
