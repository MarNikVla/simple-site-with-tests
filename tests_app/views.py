
from django.views.generic import TemplateView, DetailView, ListView

from tests_app.models import Ticket, TestCategory, Question


class Index(TemplateView):
    template_name = "base.html"


# class CategoryList(ListView):


class TicketDetailView(DetailView):
    model = Ticket
    template_name = 'test_app/test_list.html'
    context_object_name = 'ticket'

    def get_queryset(self):
        category = self.kwargs.get('category_slug', '')
        # ticket = self.kwargs.get('ticket_slug', '')
        q = super().get_queryset()
        return q.filter(category__slug=category)


class ResultView(TemplateView):
    model = Ticket
    template_name = "test_app/result.html"
    context_object_name = 'ticket'

    # def compare_answers(self):
    #     answers= self.request.GET
    #     ticket = Ticket.objects.filter(slug=self.kwargs['slug'],
    #                                    category=self.kwargs['category_slug'])
    #     question_ids=




    def get_context_data(self, **kwards):
        context = super(ResultView, self).get_context_data(**kwards)
        ticket_from_slug = self.kwargs.get('slug', '')
        context['ticket'] = Ticket.objects.get(slug = ticket_from_slug)

        answers= self.request.GET
        ticket = Ticket.objects.get(slug=self.kwargs['slug'],
                                       category__slug=self.kwargs['category_slug'])
        question_ids= [item for item in list(answers.keys())]
        question =  question_ids[1]
        context['question'] = question
        correct_answers_from_db = ticket.questions.all()[0].correct_answer
        context['answers'] = correct_answers_from_db
        print(correct_answers_from_db)


        # context['question'] = self.request.GET
        return context



