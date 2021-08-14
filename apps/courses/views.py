from django.shortcuts import render, get_object_or_404

from .models import Course

# Create your views here.


def home(request):
    ...


def course_detail(request, slug):
    template_name = 'courses/course_detail.html'
    course = get_object_or_404(Course, slug=slug)
    context = {
        'course': course,
    }
    return render(request, template_name, context)
