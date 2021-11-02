from django.contrib import admin
from django.db import models

from .models import Teacher, Course, Platform, Category
from .forms import CourseForm
from .widgets import CharsLeftInput

# Register your models here.


@admin.register(Teacher)
class TeacherAdmin(admin.ModelAdmin):
    list_display = ['name', 'background', 'created_at', 'updated_at']
    search_fields = ['name']
    list_per_page = 10
    list_filter = ['background']


@admin.register(Course)
class CourseAdmin(admin.ModelAdmin):
    form = CourseForm
    list_display = ['name', 'teacher', 'price', 'created_at', 'updated_at']
    list_filter = ['platform', 'teacher']
    search_fields = ['name', 'teacher']
    list_per_page = 50


@admin.register(Platform)
class PlataformAdmin(admin.ModelAdmin):
    list_display = ['name', 'created_at', 'updated_at']
    search_fields = ['name']


@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ['name']
    search_fields = ['name']
