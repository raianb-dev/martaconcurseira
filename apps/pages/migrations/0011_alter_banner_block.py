# Generated by Django 3.2.5 on 2021-11-02 21:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pages', '0010_alter_banner_text'),
    ]

    operations = [
        migrations.AlterField(
            model_name='banner',
            name='block',
            field=models.PositiveBigIntegerField(choices=[(1, 'Bloco 1'), (2, 'Bloco 2'), (3, 'Bloco 3'), (4, 'Bloco 4'), (5, 'Bloco 5')], verbose_name='Bloco'),
        ),
    ]