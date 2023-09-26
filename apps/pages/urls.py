from django.urls import path
from . import views

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
    path('<path:undefined_path>/', views.handler404, name='404'),  # Adicionando rota para erro 404
]
