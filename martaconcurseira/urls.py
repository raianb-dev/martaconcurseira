from django.contrib import admin
from django.urls import path, include, re_path
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic import TemplateView


urlpatterns = [
    path('admin/', admin.site.urls),
    path('blog/', include('blog.urls', namespace='blog')),
    path('cursos/', include('courses.urls', namespace='courses')),
    path('ckeditor/', include('ckeditor_uploader.urls')),
    path('', include('pages.urls', namespace='pages')),
]

# Adicionando configuração para servir arquivos de mídia e estáticos
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
