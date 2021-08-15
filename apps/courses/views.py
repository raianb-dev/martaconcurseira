from django.core.paginator import Paginator
from django.shortcuts import render, get_object_or_404

from .models import Course

# Create your views here.


def home(request):
    template_name = 'courses/courses.html'
    courses = Course.objects.all().order_by('-created_at')
    paginator = Paginator(courses, 12)
    page = request.GET.get('pagina')
    courses = paginator.get_page(page)
    context = {
        'courses': courses,
    }
    return render(request, template_name, context)


def course_detail(request, slug):
    template_name = 'courses/course_detail.html'
    course = get_object_or_404(Course, slug=slug)
    context = {
        'course': course,
    }
    return render(request, template_name, context)
