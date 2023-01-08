from django.urls import path

app_name = 'courses'

from . import views

urlpatterns = [
    path('detalhes/<slug:slug>/', views.course_detail, name='course_detail'),
    path('', views.home, name='home'),

    path('lista-de-materiais/', views.material_list, name='material_list'),
    path('lista-de-materiais/<slug:slug>/', views.material_detail, name='material_detail'),
]
