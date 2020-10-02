
from django.views.generic import TemplateView, DetailView

from tests_app.models import Ticket
from tests_app.utils import get_all_correct_answers_from_db, get_answers, \
    get_result, get_correct_and_incorrect_answer
from tests_app.models import TestCategory


# Стартовая страница (Выбор категрии и билета)
class IndexView(TemplateView):
    template_name = "base.html"

    def get_context_data(self, **kwargs):
        context = super(IndexView, self).get_context_data(**kwargs)
        context['categories'] = TestCategory.objects.all()
        return context


# Страница Билета (Сам билет с ответами)
class TicketDetailView(DetailView):
    model = Ticket
    template_name = 'test_app/test_list.html'
    context_object_name = 'ticket'

    def get_queryset(self):
        category = self.kwargs.get('category_slug', '')
        q = super().get_queryset()
        return q.filter(category__slug=category)


# Страница результата
class ResultView(DetailView):
    model = Ticket
    template_name = "test_app/result.html"
    context_object_name = 'ticket'

    # Получение сдаваемого билета
    def get_queryset(self):
        category = self.kwargs.get('category_slug', '')
        q = super().get_queryset()
        return q.filter(category__slug=category)

    # Подготовка контекста шаблона
    def get_context_data(self, **kwargs):
        context = super(ResultView, self).get_context_data(**kwargs)
        correct_answers, incorrect_answers = get_correct_and_incorrect_answer(self)
        context['incorrect_answers'] = incorrect_answers
        context['correct_answers'] = correct_answers
        context['all_correct_answers'] = get_all_correct_answers_from_db(self)
        context['answers'] = get_answers(self)
        context['result'] = get_result(self)
        return context
