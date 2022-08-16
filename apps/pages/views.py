import datetime

from django.core.paginator import Paginator
from django.http.response import BadHeaderError, JsonResponse
from django.shortcuts import redirect, render, get_object_or_404
from django.contrib import messages

from blog.models import Post
from configs.models import SEOHome
from courses.models import Course, Category
from pages.models import AboutUs, Video, Banner

from .forms import ContactForm

# Create your views here.


def home(request):
    template_name = 'pages/home.html'
    seo = SEOHome.objects.first()
    posts = Post.objects.filter(is_active=True,
                                published_at__lte=datetime.datetime.today()).order_by('-published_at')[:4]
    courses = Course.objects.order_by('-created_at')[:8]
    categories = Category.objects.all()
    block1_banner = Banner.objects.filter(block=1).first()
    block2_banner = Banner.objects.filter(block=2).first()
    block3_banner = Banner.objects.filter(block=3).first()
    block4_banner = Banner.objects.filter(block=4).first()
    block5_banner = Banner.objects.filter(block=5).first()
    context = {
        'seo': seo,
        'posts': posts,
        'courses': courses,
        'categories': categories,
        'block1_banner': block1_banner,
        'block2_banner': block2_banner,
        'block3_banner': block3_banner,
        'block4_banner': block4_banner,
        'block5_banner': block5_banner,
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


def contact(request):
    template_name = 'pages/contact.html'
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            template_email = 'pages/email.txt'
            try:
                form.send_email(form, ['martaconcurseira@gmail.com'], template_email)
            except BadHeaderError:
                messages.error(request, 'Error. Mensagem não enviada.')
            messages.success(request, 'Mensagem enviada com sucesso.')
            return redirect('pages:contact')
    else:
        form = ContactForm()
    context = {
        'form': form
    }
    return render(request, template_name, context)


def search_bar(request):
    course = request.GET.get('course')
    payload = []
    if course:
        courses = Course.objects.filter(name__icontains=course)
        for course in courses:
            payload.append(course.name)
    return JsonResponse({'status': 200, 'data': payload})


def search_result(request):
    template_name = 'courses/course_detail.html'
    course_name = request.GET.get('curso')
    context = {}
    if course_name:
        course = Course.objects.filter(name=course_name).first()
        context['course'] = course
    return render(request, template_name, context)


def search_filters(request):
    template_name = 'courses/search_filters.html'
    category_id = request.GET.get('category', None)
    search = request.GET.get('search', '')
    price_range = request.GET.get('price_range', 10000)
    if category_id is not None:
        courses_cat = Course.objects.filter(id=category_id)
    else:
        courses_cat = None
    if search != '':
        courses_term = Course.objects.search(query=search)
    if price_range:
        courses_price_range = Course.objects.filter(price__lte=price_range)
    paginator = Paginator(courses_price_range, 10)
    page = request.GET.get('pagina')
    courses_price_range = paginator.get_page(page)
    context = {
        'courses_cat': courses_cat,
        'courses_term': courses_term if search else None,
        'courses_price_range': courses_price_range if price_range else None,
        'price_range': price_range,
        'category': category_id,
        'search': search,
    }
    return render(request, template_name, context)
