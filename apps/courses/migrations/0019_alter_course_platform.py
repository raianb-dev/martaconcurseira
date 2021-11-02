# Generated by Django 3.2.5 on 2021-11-02 16:57

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0018_course_category'),
    ]

    operations = [
        migrations.AlterField(
            model_name='course',
            name='platform',
            field=models.ForeignKey(blank=True, default=1, null=True, on_delete=django.db.models.deletion.SET_NULL, to='courses.platform', verbose_name='Plataforma'),
        ),
    ]
