# Generated by Django 3.2.5 on 2023-01-07 21:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('configs', '0006_scripts_is_active'),
    ]

    operations = [
        migrations.CreateModel(
            name='TitleBar',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('pages', models.CharField(choices=[('01', 'Home'), ('02', 'Cursos'), ('03', 'Blog'), ('04', 'About'), ('05', 'Contato')], help_text='Escolha aonde o Titulo deve ser inserido.', max_length=2, verbose_name='Paginas')),
                ('title', models.CharField(max_length=100, verbose_name='Barra de Título')),
            ],
            options={
                'verbose_name': 'Barra de Título',
                'verbose_name_plural': 'Barra de Título',
            },
        ),
    ]
