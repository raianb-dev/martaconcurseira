# Generated by Django 3.2.5 on 2021-09-09 13:11

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('pages', '0005_auto_20210814_1930'),
    ]

    operations = [
        migrations.AddField(
            model_name='aboutus',
            name='created_at',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now, verbose_name='Cirado em'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='aboutus',
            name='updated_at',
            field=models.DateTimeField(auto_now=True, verbose_name='Atualizado em'),
        ),
    ]
