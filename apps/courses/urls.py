from django.urls import path

app_name = 'courses'

from . import views

urlpatterns = [
    path('detalhes/<slug:slug>/', views.course_detail, name='course_detail'),
    path('', views.home, name='home'),
]
