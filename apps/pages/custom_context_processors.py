from .models import SocialNetwork
from configs.models import Logo, GoogleAnalytics, Scripts


def get_social_network(request):
    return {
        'social': SocialNetwork.objects.all()
    }


def get_logo(request):
    return {
        'logo': Logo.objects.all().first()
    }


def get_ga_code(request):
    return {
        'ga_code': GoogleAnalytics.objects.first().ga_id
    }


def get_scripts(request):
    return {
        'header_scripts': Scripts.objects.filter(place='HD', is_active=True),
        'footer_scripts': Scripts.objects.filter(place='FT', is_active=True),
    }
