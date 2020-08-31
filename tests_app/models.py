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

    category = models.ManyToManyField(TestCategory)
    text = models.TextField(blank=False)
    image = models.ImageField(upload_to='images/%Y/%m/%d/')

    def __str__(self):
        result = str(self.text)[0:30]+'...'
        return result