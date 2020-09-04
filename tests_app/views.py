
from django.views.generic import TemplateView, DetailView, ListView

from tests_app.models import Ticket


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
