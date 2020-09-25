from django.urls import path

from tests_app.views import IndexView, TicketDetailView, ResultView

urlpatterns = [
    path('', IndexView.as_view(), name='index'),
    path('<slug:category_slug>/<slug:slug>/', TicketDetailView.as_view(), name='ticket_detail'),
    path('<slug:category_slug>/<slug:slug>/result', ResultView.as_view(), name='ticket_result'),
]
