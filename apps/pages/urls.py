from django.urls import path
from . import views
from django.urls import re_path
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin

app_name = 'pages'

urlpatterns = [
    path('sobre-nos/', views.about_us, name='about_us'),
    path('videos/', views.videos, name='videos'),
    path('contato/', views.contact, name='contact'),
    path('busca/', views.search_bar, name='search_bar'),
    path('resultado-busca/', views.search_result, name='search_result'),
    path('filtros/', views.search_filters, name='search_filters'),
    path('video/<slug:slug>/', views.video_detail, name='video_detail'),
    path('', views.home, name='home'),
    re_path(r'^(?!admin/)(?!.*\.(?:xml|jpg|png|html)$).*$', views.handler404, name='404'),

] 
