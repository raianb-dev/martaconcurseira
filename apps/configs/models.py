from django.db import models
from django.core.exceptions import ValidationError

# Create your models here.


class Logo(models.Model):
    title = models.CharField('Título/Alt', max_length=100)
    image = models.ImageField('Logo', upload_to='images')

    class Meta:
        verbose_name = 'Logo'
        verbose_name_plural = 'Logo'

    def __str__(self):
        return self.title

    def clean(self):
        model = self.__class__
        if model.objects.count() > 0 and self.id != model.objects.get().id:
            raise ValidationError('Já existe uma logomarca cadastrada.')
