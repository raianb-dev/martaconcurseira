import datetime

from django.core.paginator import Paginator
from django.shortcuts import render, get_object_or_404

from .models import Post

# Create your views here.


def home(request):
    template_name = 'blog/blog_home.html'
    posts = Post.objects.filter(is_active=True, published_at__lte=datetime.datetime.today()).order_by('-published_at')
    last_post = posts.reverse().last()
    paginator = Paginator(posts, 12)
    page = request.GET.get('pagina')
    posts = paginator.get_page(page)
    context = {
        'posts': posts,
        'last_post': last_post,
    }
    return render(request, template_name, context)


def post_detail(request, slug):
    template_name = 'blog/post_detail.html'
    post = get_object_or_404(Post, slug=slug)
    recents_posts = Post.objects.order_by('-published_at')[:3]
    context = {
        'post': post,
        'recents_posts': recents_posts,
    }
    return render(request, template_name, context)


def get_posts_by_tag(request, tag):
    template_name = 'blog/post_list.html'
    posts = Post.objects.filter(tags__icontains=tag)
    context = {
        'posts': posts,
        'tag': tag,
    }
    return render(request, template_name, context)
