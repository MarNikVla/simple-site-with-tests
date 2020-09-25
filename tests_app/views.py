
from django.views.generic import TemplateView, DetailView

from tests_app.models import Ticket
from tests_app.utils import get_all_correct_answers_from_db, get_answers, \
    get_result, get_correct_and_incorrect_answer
from tests_app.models import TestCategory


class IndexView(TemplateView):
    template_name = "base.html"

    def get_context_data(self, **kwargs):
        context = super(IndexView, self).get_context_data(**kwargs)
        context['categories'] = TestCategory.objects.all()
        return context


class TicketDetailView(DetailView):
    model = Ticket
    template_name = 'test_app/test_list.html'
    context_object_name = 'ticket'

    def get_queryset(self):
        category = self.kwargs.get('category_slug', '')
        q = super().get_queryset()
        return q.filter(category__slug=category)


class ResultView(DetailView):
    model = Ticket
    template_name = "test_app/result.html"
    context_object_name = 'ticket'

    def get_queryset(self):
        category = self.kwargs.get('category_slug', '')
        q = super().get_queryset()
        return q.filter(category__slug=category)

    def get_context_data(self, **kwargs):
        context = super(ResultView, self).get_context_data(**kwargs)
        answers = get_answers(self)
        result = get_result(self)
        correct_answers, incorrect_answers = get_correct_and_incorrect_answer(self)
        print(correct_answers)
        print(answers)
        print(result)
        print(incorrect_answers)
        context['incorrect_answers'] = incorrect_answers
        context['correct_answers'] = correct_answers
        context['all_correct_answers'] = get_all_correct_answers_from_db(self)
        context['answers'] = answers

        context['result'] = result
        return context
