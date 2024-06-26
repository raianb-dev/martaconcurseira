# Generated by Django 3.2.5 on 2023-01-07 13:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0020_course_keywords'),
    ]

    operations = [
        migrations.AlterField(
            model_name='course',
            name='author',
            field=models.CharField(blank=True, max_length=150, null=True, verbose_name='Criado por'),
        ),
        migrations.AlterField(
            model_name='course',
            name='category',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='courses.category', verbose_name='Categoria'),
        ),
        migrations.AlterField(
            model_name='course',
            name='teacher',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='courses.teacher', verbose_name='Professor'),
        ),
    ]
