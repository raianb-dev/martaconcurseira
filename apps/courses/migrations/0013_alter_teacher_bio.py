# Generated by Django 3.2.5 on 2021-11-01 20:31

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0012_alter_teacher_background'),
    ]

    operations = [
        migrations.AlterField(
            model_name='teacher',
            name='bio',
            field=ckeditor.fields.RichTextField(blank=True, null=True, verbose_name='Biografia'),
        ),
    ]
