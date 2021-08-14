from django.urls import path

app_name = 'pages'

from . import views

urlpatterns = [
    path('sobre-nos/', views.about_us, name='about_us'),
    path('', views.home, name='home'),
]
