from django.urls import path

from tests_app.views import Index, TicketDetailView

urlpatterns = [
    path('', Index.as_view(), name='index'),
    path('<slug:category_slug>/<slug:slug>/', TicketDetailView.as_view(), name='ticket_detail'),
    # path('bilet/<slug:ticket_slug>/', Test_VPP.as_view(), name='Test_VPP'),
]
