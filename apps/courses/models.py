from django.db import models

from autoslug import AutoSlugField
from ckeditor.fields import RichTextField

# Create your models here.



class Platform(models.Model):
    name = models.CharField('Plataforma', max_length=150, help_text='Ex: Hotmart, Monetizze')
    slug = AutoSlugField('Slug', populate_from='name', unique=True, help_text='Preencimento automático')

    class Meta:
        verbose_name = 'Plataforma'
        verbose_name_plural = 'Plataformas'
    
    def __str__(self):
        return self.name



class Teacher(models.Model):
    name = models.CharField('Nome', max_length=100)
    background = models.CharField('Formação', max_length=150)
    bio = RichTextField('Biográfia')
    photo = models.ImageField('Foto', upload_to='photos', blank=True, null=True)

    class Meta:
        verbose_name = 'Professor'
        verbose_name_plural = 'Professores'

    def __str__(self) -> str:
        return self.name


class Course(models.Model):
    name = models.CharField('Nome', max_length=100)
    short_description = models.CharField('Descrição curta', max_length=160)
    author = models.CharField('Criado por', max_length=150)
    price = models.DecimalField('Preço', max_digits=19, decimal_places=2,
                                help_text='Informe o valor sem o símbolo da moeda.')
    what_learn = RichTextField('O que você vai aprender')
    requirements = RichTextField('Requisitos')
    description = RichTextField('Descrição')
    for_what = RichTextField('Pra quem é este curso')
    image = models.ImageField('Imagem do curso', upload_to='images')
    teacher = models.ForeignKey(Teacher, verbose_name='Professor', on_delete=models.CASCADE)
    url = models.URLField('Link de Compra')
    is_active = models.BooleanField('Curso Ativo?', default=True, help_text='Somente cursos ativos serão visíveis.')
    platform = models.ForeignKey(Platform, verbose_name='Plataforma', blank=True, null=True, on_delete=models.SET_NULL)
    slug = AutoSlugField('URL Única', populate_from='name', unique=True, help_text='Preenchimento automático')
    created_at = models.DateTimeField('Criado em', auto_now_add=True)
    updated_at = models.DateTimeField('Atualizado em', auto_now=True)

    class Meta:
        verbose_name = 'Curso'
        verbose_name_plural = 'Cursos'

    def __str__(self) -> str:
        return self.name

    def get_absolute_url(self):
        from django.urls import reverse
        return reverse('courses:course_detail', kwargs={'slug': self.slug})
