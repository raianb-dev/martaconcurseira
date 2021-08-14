from django.urls import path

app_name = 'blog'

from . import views


urlpatterns = [
    path('noticia/<slug:slug>/', views.post_detail, name='post_detail'),
    path('posts/tag/<str:tag>/', views.get_posts_by_tag, name='get_posts_by_tag'),
    path('', views.home, name='blog_home'),
]
