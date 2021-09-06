from django.urls import path

app_name = 'pages'

from . import views

urlpatterns = [
    path('sobre-nos/', views.about_us, name='about_us'),
    path('videos/', views.videos, name='videos'),
    path('contato/', views.contact, name='contact'),
    path('video/<slug:slug>/', views.video_detail, name='video_detail'),
    path('', views.home, name='home'),
]
