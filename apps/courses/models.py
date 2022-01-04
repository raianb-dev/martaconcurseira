from django.db import models

from autoslug import AutoSlugField
from ckeditor.fields import RichTextField

# Create your models here.



class Platform(models.Model):
    name = models.CharField('Plataforma', max_length=150, help_text='Ex: Hotmart, Monetizze')
    slug = AutoSlugField('Slug', populate_from='name', unique=True, help_text='Preencimento automático')
    created_at = models.DateTimeField('Criado em', auto_now_add=True)
    updated_at = models.DateTimeField('Atualizado em', auto_now=True)

    class Meta:
        verbose_name = 'Plataforma'
        verbose_name_plural = 'Plataformas'
    
    def __str__(self):
        return self.name


class Teacher(models.Model):
    name = models.CharField('Nome', max_length=100)
    background = models.CharField('Formação', max_length=150, blank=True, null=True)
    bio = RichTextField('Biografia', blank=True, null=True)
    photo = models.ImageField('Foto', upload_to='photos', blank=True, null=True)
    created_at = models.DateTimeField('Criado em', auto_now_add=True)
    updated_at = models.DateTimeField('Atualizado em', auto_now=True)

    class Meta:
        verbose_name = 'Professor'
        verbose_name_plural = 'Professores'

    def __str__(self) -> str:
        return self.name


class Course(models.Model):
    category = models.ForeignKey('Category', verbose_name='Categoria', null=True, on_delete=models.SET_NULL)
    name = models.CharField('Nome', max_length=100, help_text='Tente criar um título de 60 caracteres no máximo.')
    short_description = models.CharField('Descrição curta', max_length=160, help_text='Tente criar uma descrição de até 160 caracteres.')
    keywords = models.CharField('Palavras chaves', max_length=255, help_text='Separadas por virgula', default='')
    course_id = models.CharField('Código do Curso', max_length=50, blank=True, null=True)
    author = models.CharField('Criado por', max_length=150)
    teacher = models.ForeignKey(Teacher, verbose_name='Professor', on_delete=models.CASCADE)
    price = models.DecimalField('Preço', max_digits=19, decimal_places=2,
                                help_text='Informe o valor sem o símbolo da moeda.')
    url = models.URLField('Link de Compra')
    platform = models.ForeignKey(Platform, verbose_name='Plataforma', blank=True, null=True, on_delete=models.SET_NULL, default=1)
    description = RichTextField('Descrição')
    image = models.ImageField('Imagem do curso', upload_to='images')
    is_active = models.BooleanField('Curso Ativo?', default=True, help_text='Somente cursos ativos serão visíveis.')
    slug = AutoSlugField('URL Única', populate_from='name', unique=True, help_text='Preenchimento automático')
    created_at = models.DateTimeField('Criado em', auto_now_add=True)
    updated_at = models.DateTimeField('Atualizado em', auto_now=True)

    class Meta:
        verbose_name = 'Curso'
        verbose_name_plural = 'Cursos'
        unique_together = ['platform', 'course_id']

    def __str__(self) -> str:
        return self.name

    def get_absolute_url(self):
        from django.urls import reverse
        return reverse('courses:course_detail', kwargs={'slug': self.slug})


class Category(models.Model):
    name = models.CharField('Nome', max_length=100)
    slug = AutoSlugField('URL única', populate_from='name', unique=True, help_text='Preenchimento automático')

    class Meta:
        verbose_name = 'Categoria'
        verbose_name_plural = 'Categorias'
        ordering = ['name']

    def __str__(self):
        return self.name
