# Generated by Django 3.2.5 on 2021-09-09 12:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0008_auto_20210909_0951'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='course_id',
            field=models.CharField(blank=True, max_length=50, null=True, verbose_name='Código do Curso'),
        ),
        migrations.AlterUniqueTogether(
            name='course',
            unique_together={('platform', 'course_id')},
        ),
    ]
