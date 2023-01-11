from django.db.models import Q
from django.db import models


class CourseManager(models.Manager):

    def search(self, query=None):
        qs = self.get_queryset()
        if query is not None:
            or_lookup = (Q(name__icontains=query) | Q(short_description__icontains=query) |
                         Q(keywords__icontains=query) | Q(author__icontains=query) | Q(description__icontains=query))
            qs = qs.filter(or_lookup)
        return qs

class MeterialFreeManager(models.Manager):

    def search(self, query=None):
        qs = self.get_queryset().filter(is_active=True)
        if query is not None:
            or_lookup = (Q(name__icontains=query) | Q(short_description__icontains=query) |
                         Q(keywords__icontains=query) | Q(description__icontains=query))
            qs = qs.filter(or_lookup)
        return qs