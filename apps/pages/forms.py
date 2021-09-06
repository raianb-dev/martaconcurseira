from django import forms
from django.forms import models
from django.template.loader import render_to_string
from django.core.mail import send_mail
from django.conf import settings



class ContactForm(forms.Form):
    name = forms.CharField(label='Nome', required=True)
    sender_email = forms.CharField(label='E-mail', required=True)
    subject = forms.CharField(label='Assunto', required=True)
    message = forms.CharField(label='Mensagem', widget=forms.Textarea, required=True)

    def send_email(self, form, recipient_list, template_email):
        context = form.cleaned_data
        subject = '{}'.format(context['subject'])
        message = render_to_string(template_email, context)
        send_mail(subject, message, settings.EMAIL_HOST_USER, recipient_list)
