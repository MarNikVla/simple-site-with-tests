from django.shortcuts import render
from rest_framework import viewsets, generics
from rest_framework.decorators import api_view, action
from rest_framework.generics import RetrieveAPIView

from api.serializers import CategorySerializer, TicketSerializer, QuestionSerializer
from tests_app.models import TestCategory, Ticket, Question

# @api_view (['GET'])
# def bbs(request):
#     if request.method == 'GET':
#         bbs = Bb.objects.filter(is_active=True)[:10]
#         serializer = BbSerializer(bbs, many=True)
#         return Response(serializer.data)


class CategoryViewSet(viewsets.ModelViewSet) :
    queryset = TestCategory.objects.all()
    serializer_class = CategorySerializer


    @action(detail=True, methods=['get'],
            serializer_class=TicketSerializer,
            # queryset=Ticket.objects.all()
            # authentication_classes=[BasicAuthentication],
            # permission_classes=[IsAuthenticated, IsEnrolled],
            )
    def tickets(self, request, *args, **kwargs):
        self.queryset = Ticket.objects.filter(category__exact=self.kwargs['pk'])
        return self.list(request, *args, **kwargs)

    # lookup_field = 'slug'

class TicketViewSet(viewsets.ModelViewSet) :
    queryset = Ticket.objects.all()
    serializer_class = TicketSerializer

    @action(detail=True, methods=['get'],
            serializer_class=QuestionSerializer,
            # queryset=Ticket.objects.all()
            # authentication_classes=[BasicAuthentication],
            # permission_classes=[IsAuthenticated, IsEnrolled],
            )
    def questions(self, request, *args, **kwargs):
        self.queryset = Question.objects.filter(ticket__exact=self.kwargs['pk'])
        return self.list(request, *args, **kwargs)
    # def get_queryset(self):
    #     queryset = Ticket.objects.filter(category__exact='2')
    #     # queryset=super().get_queryset()
    #     return queryset

    # print('hgjg')

    # @action(detail=True, methods=['get'],
    #         serializer_class=QuestionSerializer,
    #         # queryset=Ticket.objects.all()
    #         # authentication_classes=[BasicAuthentication],
    #         # permission_classes=[IsAuthenticated, IsEnrolled],
    #         )
    # def questions(self, request, *args, **kwargs):
    #     self.queryset = Question.objects.filter(ticket__exact=self.kwargs['pk'])
    #     return self.list(request, *args, **kwargs)

class QuestionViewSet(viewsets.ModelViewSet) :
    queryset = Question.objects.all()
    serializer_class = QuestionSerializer