from django.db import models
from django.db import models
from django.core.validators import FileExtensionValidator
from django.core.exceptions import ValidationError

# Função de validação personalizada
def validate_xml_extension(value):
    extension = value.name.split('.')[-1].lower()
    if extension != 'xml':
        raise ValidationError('O arquivo deve ter a extensão .xml.')

class Sitemap(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.FileField(upload_to='sitemaps/', validators=[FileExtensionValidator(allowed_extensions=['xml']), validate_xml_extension])

    def __str__(self):
        return str(self.name)  # Convertido para string para exibição mais amigável


