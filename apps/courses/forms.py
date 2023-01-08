from django import forms

from .models import MaterialFree, Teacher, Course
from .widgets import CharsLeftInput


class TeacherForm(forms.ModelForm):
    class Meta:
        model = Teacher
        fields = '__all__'
        widgets = {

        }


class CourseForm(forms.ModelForm):
    class Meta:
        model = Course
        fields = '__all__'
        widgets = {
            'course_id': forms.TextInput(attrs={'size': 20}),
            'author': forms.TextInput(attrs={'size': 50, 'class': 'vTextField-resize'}),
            'name': CharsLeftInput()
        }

class MaterialFreeForm(forms.ModelForm):
    class Meta:
        model = MaterialFree
        fields = '__all__'
        widgets = {
            'name': CharsLeftInput()
        }