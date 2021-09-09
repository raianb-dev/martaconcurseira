from django.db import models
from django.contrib.auth import get_user_model

from ckeditor.fields import RichTextField
from autoslug import AutoSlugField

# Create your models here.
from django.utils import timezone

User = get_user_model()

class Category(models.Model):
    name = models.CharField('Título', max_length=60)
    description = RichTextField('Descrição', blank=True, null=True)
    slug = AutoSlugField('URL única', populate_from='name', unique=True, help_text='Preenchido automaticamente.')
    created_at = models.DateTimeField('Criado em', auto_now_add=True)
    updated_at = models.DateTimeField('Atualizado em', auto_now=True)

    class Meta:
        verbose_name = 'Categoria'
        verbose_name_plural = 'Categorias'

    def __str__(self) -> str:
        return self.name


class Post(models.Model):
    title = models.CharField('Título', max_length=100, help_text='Recomendado de no máximo 60 caracteres no título.')
    headline = models.CharField('Subtítulo', max_length=160,
                                help_text='Uma pequena descrição do texto, será usada também para o SEO.')
    content = RichTextField('Conteúdo')
    category = models.ForeignKey(Category, verbose_name='Categoria', null=True, on_delete=models.SET_NULL)
    author = models.ForeignKey(User, verbose_name='Autor', on_delete=models.CASCADE)
    tags = models.CharField('Tags', max_length=50, help_text='Separe as tags por vírgula. Máximo de 50 caracteres.')
    image = models.ImageField('Imagem', upload_to='images', help_text='Imagem de capa do post')
    slug = AutoSlugField('URL Única', populate_from='title', unique=True, help_text='Preenchimento automático')
    is_active = models.BooleanField('Post ativo', default=True, help_text='Somente posts ativos serão visíveis')
    published_at = models.DateTimeField('Publicar em', default=timezone.now,
                                        help_text='Para agendamento, informe uma data futura')
    created_at = models.DateTimeField('Criado em', auto_now_add=True)
    updated_at = models.DateTimeField('Atualizado em', auto_now=True)

    class Meta:
        verbose_name = 'Postagem'
        verbose_name_plural = 'Postagens'

    def __str__(self) -> str:
        return self.title

    def get_absolute_url(self):
        from django.urls import reverse
        return reverse('blog:post_detail', kwargs={'slug': self.slug})
