from django.core.paginator import Paginator
from django.shortcuts import render, get_object_or_404

from .models import Course, MaterialFree

# Create your views here.


def home(request):
    template_name = 'courses/courses.html'
    courses = Course.objects.all().order_by('-created_at')
    paginator = Paginator(courses, 15)
    page = request.GET.get('pagina')
    courses = paginator.get_page(page)
    context = {
        'courses': courses,
    }
    return render(request, template_name, context)


def course_detail(request, slug):
    template_name = 'courses/course_detail.html'
    courses = Course.objects.order_by('-created_at')[:4]
    course = get_object_or_404(Course, slug=slug)
    context = {
        'course': course,
        'courses': courses,
    }
    return render(request, template_name, context)

def material_list(request):
    template_name = 'courses/material_list.html'
    materials = MaterialFree.objects.filter(is_active=True).order_by('-created_at')
    
    paginator = Paginator(materials, 15)
    page = request.GET.get('pagina')
    materials = paginator.get_page(page)
    search = request.GET.get('search', '')

    if search:
        materials = MaterialFree.objects.search(query=search)
  
    context = {
        'materials': materials,
        'search': search,
    }
    return render(request, template_name, context)


def material_detail(request, slug):
    template_name = 'courses/material_detail.html'
    materials = MaterialFree.objects.order_by('-created_at')[:4]
    material = get_object_or_404(MaterialFree, slug=slug)
    context = {
        'material': material,
        'materials': materials,
    }
    return render(request, template_name, context)
