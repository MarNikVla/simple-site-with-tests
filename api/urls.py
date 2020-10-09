from django.urls import path, include
from rest_framework.routers import DefaultRouter
from rest_framework.urlpatterns import format_suffix_patterns

from api.views import CategoryViewSet, TicketViewSet, QuestionViewSet


router = DefaultRouter()
router.register(r'tickets', TicketViewSet, basename='ticket')
router.register(r'categories', CategoryViewSet, basename='testcategory')
router.register(r'questions', QuestionViewSet, basename='question')
# router.register(r'', CategoryViewSet, basename='index')




urlpatterns = [
    # path('category/<pk2>/tickets/<pk>',
    #      TicketViewSet.as_view()),
    path('', include(router.urls)),
    # path('tickets/', TicketViewSet.as_view()),
    # path('bbs/<int:pk>/',BbDetailView.as_view()),
    # path('bbs/', bbs),
]

urlpatterns+=router.urls