import datetime

from django.core.paginator import Paginator
from django.shortcuts import render, get_object_or_404

from blog.models import Post
from courses.models import Course
from pages.models import AboutUs

# Create your views here.
from pages.models import Video


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
    about = AboutUs.objects.last()
    context = {
        'about': about,
    }
    return render(request, template_name, context)


def videos(request):
    template_name = 'pages/videos.html'
    videos = Video.objects.all()
    last_video = videos.last()
    paginator = Paginator(videos, 3)
    page = request.GET.get('pagina')
    videos = paginator.get_page(page)
    context = {
        'videos': videos,
        'last_video': last_video,
    }
    return render(request, template_name, context)


def video_detail(request, slug):
    template_name = 'pages/video_detail.html'
    video = get_object_or_404(Video, slug=slug)
    context = {
        'video': video,
    }
    return render(request, template_name, context)