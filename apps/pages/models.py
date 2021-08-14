from django.core.exceptions import ValidationError
from django.db import models

from ckeditor.fields import RichTextField

# Create your models here.


class AboutUs(models.Model):
    title_page = models.CharField('Título da Página', max_length=150)
    text_page = RichTextField('Texto')

    class Meta:
        verbose_name = 'Sobre nós'
        verbose_name_plural = 'Sobre nós'

    def __str__(self) -> str:
        return self.title_page

    def clean(self):
        model = self.__class__
        if model.objects.count() > 0 and self.id != model.objects.get().id:
            raise ValidationError('Já existe um texto sobre nós criado.')
