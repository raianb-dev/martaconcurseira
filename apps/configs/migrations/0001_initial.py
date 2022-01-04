# Generated by Django 3.2.5 on 2021-11-03 00:09

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Logo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100, verbose_name='Título/Alt')),
                ('image', models.ImageField(upload_to='images', verbose_name='Logo')),
            ],
            options={
                'verbose_name': 'Logo',
                'verbose_name_plural': 'Logo',
            },
        ),
    ]