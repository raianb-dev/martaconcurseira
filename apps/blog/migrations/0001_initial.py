# Generated by Django 3.2.5 on 2021-07-15 13:24

import autoslug.fields
import ckeditor.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=60, verbose_name='Título')),
                ('description', ckeditor.fields.RichTextField(blank=True, null=True, verbose_name='Descrição')),
                ('slug', autoslug.fields.AutoSlugField(editable=False, help_text='Preenchido automaticamente.', populate_from='name', unique=True, verbose_name='URL única')),
            ],
            options={
                'verbose_name': 'Categoria',
                'verbose_name_plural': 'Categorias',
            },
        ),
    ]
