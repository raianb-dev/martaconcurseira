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


class SocialNetwork(models.Model):
    SOCIAL_NETWORK_CHOICES = (
        (1, 'Instagram'),
        (2, 'Facebook'),
        (3, 'YouTube'),
        (4, 'Linkedin'),
        (5, 'Twitter'),
    )
    network = models.PositiveBigIntegerField('Rede Social', choices=SOCIAL_NETWORK_CHOICES)
    profile_url = models.URLField('URL do perfil', help_text='Ex: https://instagram.com/martaconcurseira')

    class Meta:
        verbose_name = 'Rede Social'
        verbose_name_plural = 'Redes Sociais'
    
    def __str__(self):
        return self.profile_url


class Banner(models.Model):
    BLOCK_CHOICES = (
        (1, 'Bloco 1'),
        (2, 'Bloco 2'),
        (3, 'Bloco 3'),
    )
    block = models.PositiveBigIntegerField('Bloco', choices=BLOCK_CHOICES)
    image = models.ImageField('Imagem', upload_to='images/banners')
    title = models.CharField('Título', max_length=100)
    text = models.TextField('Texto', blank=True, null=True)

    class Meta:
        verbose_name = 'Banner'
        verbose_name_plural = 'Banners'
        ordering = ['block']

    def __str__(self):
        return self.title
