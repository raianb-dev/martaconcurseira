# Generated by Django 3.2.5 on 2021-08-14 22:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pages', '0004_alter_video_text'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='video',
            name='url',
        ),
        migrations.AddField(
            model_name='video',
            name='embed',
            field=models.TextField(default='', help_text='Insira a URL do vídeo no YouTube', verbose_name='Código Incorporação'),
            preserve_default=False,
        ),
    ]