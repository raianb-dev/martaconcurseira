# Generated by Django 3.2.5 on 2021-11-01 20:29

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0010_auto_20210909_1009'),
    ]

    operations = [
        migrations.AlterField(
            model_name='teacher',
            name='bio',
            field=ckeditor.fields.RichTextField(verbose_name='Biografia'),
        ),
    ]