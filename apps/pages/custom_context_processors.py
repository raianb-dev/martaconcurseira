from .models import SocialNetwork
from configs.models import Logo, GoogleAnalytics, Scripts, TitleBar


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
        'ga_code': GoogleAnalytics.objects.first()
    }


def get_scripts(request):
    return {
        'header_scripts': Scripts.objects.filter(place='HD', is_active=True),
        'footer_scripts': Scripts.objects.filter(place='FT', is_active=True),
    }

def get_title_bar(request):
    return {
        'title_home': TitleBar.objects.filter(pages='01').first(),
        'title_course': TitleBar.objects.filter(pages='02').first(),
        'title_blog': TitleBar.objects.filter(pages='03').first(),
        'title_about': TitleBar.objects.filter(pages='04').first(),
        'title_contact': TitleBar.objects.filter(pages='05').first(),
    }
