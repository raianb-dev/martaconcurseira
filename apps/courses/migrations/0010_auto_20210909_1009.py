# Generated by Django 3.2.5 on 2021-09-09 13:09

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0009_auto_20210909_0958'),
    ]

    operations = [
        migrations.AddField(
            model_name='platform',
            name='created_at',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now, verbose_name='Criado em'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='platform',
            name='updated_at',
            field=models.DateTimeField(auto_now=True, verbose_name='Atualizado em'),
        ),
    ]