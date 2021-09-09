from django.core.exceptions import ValidationError
from django.db import models

from ckeditor.fields import RichTextField
from autoslug import AutoSlugField

# Create your models here.


class AboutUs(models.Model):
    title_page = models.CharField('Título da Página', max_length=150)
    text_page = RichTextField('Texto')
    created_at = models.DateTimeField('Cirado em', auto_now_add=True)
    updated_at = models.DateTimeField('Atualizado em', auto_now=True)

    class Meta:
        verbose_name = 'Sobre nós'
        verbose_name_plural = 'Sobre nós'

    def __str__(self) -> str:
        return self.title_page

    def clean(self):
        model = self.__class__
        if model.objects.count() > 0 and self.id != model.objects.get().id:
            raise ValidationError('Já existe um texto sobre nós criado.')


class Video(models.Model):
    title = models.CharField('Título', max_length=60)
    short_description = models.CharField('Descrição curta', max_length=160)
    text = RichTextField('Texto', help_text='Escreva um texto sobre o vídeo')
    embed = models.TextField('Código Incorporação', help_text='Insira a URL do vídeo no YouTube')
    thumbnail = models.ImageField('Thumbnail', upload_to='images')
    slug = AutoSlugField('URL única', populate_from='title', unique=True, help_text='Preenchimento automático')
    created_at = models.DateTimeField('Cirado em', auto_now_add=True)
    updated_at = models.DateTimeField('Atualizado em', auto_now=True)

    class Meta:
        verbose_name = 'Vídeo'
        verbose_name_plural = 'Vídeos'

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        from django.urls import reverse
        return reverse('pages:video_detail', kwargs={'slug': self.slug})
