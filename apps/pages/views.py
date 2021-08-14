import datetime

from django.shortcuts import render

from blog.models import Post
from courses.models import Course

# Create your views here.


def home(request):
    template_name = 'pages/home.html'
    posts = Post.objects.filter(is_active=True,
                               published_at__lte=datetime.datetime.today()).order_by('-published_at')[:4]
    courses = Course.objects.order_by('-created_at')[:8]
    context = {
        'posts': posts,
        'courses': courses,
    }
    return render(request, template_name, context)


def about_us(request):
    template_name = 'pages/about_us.html'
    context = {}
    return render(request, template_name, context)
