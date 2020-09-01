from django.db import models

class TestCategory(models.Model):
    name = models.CharField(max_length=200, db_index=True)
    slug = models.SlugField(max_length=200, unique=True)

    class Meta:
        ordering = ('name',)
        verbose_name = 'test_category'

    def __str__(self):
        return self.name


class Ticket(models.Model):

    category = models.ForeignKey(TestCategory, on_delete=models.CASCADE, default=None)
    title = models.CharField(max_length=50)
    text = models.TextField(blank=False)
    image = models.ImageField(upload_to='images/%Y/%m/%d/')
    answers = models.TextField(default=None)
    correct_answer = models.TextField(default=None)

    def __str__(self):
       return self.title