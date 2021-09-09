from .models import SocialNetwork


def get_social_network(request):
    return {
        'social': SocialNetwork.objects.all()
    }