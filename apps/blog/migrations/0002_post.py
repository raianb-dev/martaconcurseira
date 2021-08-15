# Generated by Django 3.2.5 on 2021-07-15 14:59

import autoslug.fields
import ckeditor.fields
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('blog', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Post',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(help_text='Recomendado de no máximo 60 caracteres no título.', max_length=100, verbose_name='Título')),
                ('content', ckeditor.fields.RichTextField(verbose_name='Conteúdo')),
                ('tags', models.CharField(help_text='Separe as tags por vírgula. Máximo de 50 caracteres.', max_length=50, verbose_name='Tags')),
                ('slug', autoslug.fields.AutoSlugField(editable=False, help_text='Preenchimento automático', populate_from='title', unique=True, verbose_name='URL Única')),
                ('is_active', models.BooleanField(default=True, help_text='Somente posts ativos serão visíveis', verbose_name='Post ativo')),
                ('published_at', models.DateTimeField(default=django.utils.timezone.now, help_text='Para agendamento, informe uma data futura', verbose_name='Publicar em')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='Criado em')),
                ('updated_at', models.DateTimeField(auto_now=True, verbose_name='Atualizado em')),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Autor')),
                ('category', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='blog.category', verbose_name='Categoria')),
            ],
            options={
                'verbose_name': 'Postagem',
                'verbose_name_plural': 'Postagens',
            },
        ),
    ]