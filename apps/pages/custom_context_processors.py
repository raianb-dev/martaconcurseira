from .models import SocialNetwork
from configs.models import Logo


def get_social_network(request):
    return {
        'social': SocialNetwork.objects.all()
    }

def get_logo(request):
    return {
        'logo': Logo.objects.all().first()
    }
