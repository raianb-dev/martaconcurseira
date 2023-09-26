# Generated by Django 3.2.5 on 2023-09-26 15:11

from django.db import migrations, models
import sitemaps.models


class Migration(migrations.Migration):

    dependencies = [
        ('sitemaps', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sitemap',
            name='name',
            field=models.FileField(upload_to='uploads/', validators=[sitemaps.models.validate_xml_extension]),
        ),
    ]