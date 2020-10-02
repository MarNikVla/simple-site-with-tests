from django.db import models
from django.urls import reverse

from django.db.models import F
from django.db.models.functions import Lower, Substr


# Категория билетов (ВПП,ВП,МП)
class TestCategory(models.Model):
    name = models.CharField(max_length=200, db_index=True)
    slug = models.SlugField(max_length=200, unique=True)

    class Meta:
        ordering = ('name',)
        verbose_name = 'test_category'

    def __str__(self):
        return self.name

    # Для итерации в templates tag
    def tickets_as_list(self):
        result = [ticket for ticket in self.tickets.annotate(order=Substr('title', 4)).all()]
        return result


# Билеты
class Ticket(models.Model):
    category = models.ForeignKey(TestCategory, on_delete=models.CASCADE, default=None, related_name='tickets')
    title = models.CharField(max_length=50)
    slug = models.SlugField(max_length=200)

    class Meta:
        unique_together = ['category', 'slug']

    def __str__(self):
        return self.title + " " + self.category.name.replace("Билеты", "")

    def get_absolute_url(self):
        return reverse('ticket_detail', kwargs={'category_slug': str(self.category.slug),
                                                'slug': str(self.slug)})


# Вопросы
class Question(models.Model):
    ticket = models.ManyToManyField(Ticket, related_name='questions')
    title = models.CharField(max_length=50)
    text = models.TextField()
    image = models.ImageField(upload_to='images/%Y/%m/%d/')
    answers = models.TextField(default='')
    correct_answer = models.TextField(default='')

    def __str__(self):
        return self.title

    # Для итерации в templates tag
    def answers_as_list(self):
        result = [answer.rstrip() for answer in self.answers.split('\n')]
        return result
