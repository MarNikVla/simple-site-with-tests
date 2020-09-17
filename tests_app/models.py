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

    category = models.ForeignKey(TestCategory, on_delete=models.CASCADE, default=None, related_name='tickets')
    title = models.CharField(max_length=50)
    slug = models.SlugField(max_length=200)

    class Meta:
        unique_together = ['category', 'slug']


    def __str__(self):
        str = self.title+self.category.name
        return self.title+" "+self.category.name.replace("Билеты", "")

class Question(models.Model):
    ticket = models.ManyToManyField(Ticket, related_name='questions')
    title = models.CharField(max_length=50)
    text = models.TextField(blank=False)
    image = models.ImageField(upload_to='images/%Y/%m/%d/', blank=True)
    answers = models.TextField(default='')
    correct_answer = models.TextField(default='')


    def answers_as_list(self):
        result = [answer.rstrip() for answer in self.answers.split('\n')]
        return result
        # return self.answers.split('\n')

    def __str__(self):
        return self.title