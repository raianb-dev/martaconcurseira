# Generated by Django 3.2.5 on 2023-01-08 21:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('configs', '0007_titlebar'),
    ]

    operations = [
        migrations.AlterField(
            model_name='titlebar',
            name='pages',
            field=models.CharField(choices=[('01', 'Home'), ('02', 'Cursos'), ('03', 'Blog'), ('04', 'Sobre nos'), ('05', 'Contato'), ('06', 'Material Gratuito')], help_text='Escolha aonde o Titulo deve ser inserido.', max_length=2, verbose_name='Paginas'),
        ),
    ]
