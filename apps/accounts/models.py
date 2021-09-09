from django.db import models
from django.contrib.auth.models import User


# Create your models here.


class Profile(models.Model):
    user = models.OneToOneField(User, verbose_name='Usuário', on_delete=models.CASCADE)
    photo = models.ImageField('Foto Perfil', upload_to='photos')

    class Meta:
        verbose_name = 'Perfil'
        verbose_name_plural = 'Perfis'
    
    def __str__(self):
        return self.user.username
