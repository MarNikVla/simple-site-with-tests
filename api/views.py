from django.shortcuts import render
from rest_framework import viewsets, generics
from rest_framework.decorators import api_view, action
from rest_framework.generics import RetrieveAPIView
from rest_framework.permissions import IsAuthenticatedOrReadOnly

from api.serializers import CategorySerializer, TicketSerializer, QuestionSerializer
from tests_app.models import TestCategory, Ticket, Question


class CategoryViewSet(viewsets.ModelViewSet):
    queryset = TestCategory.objects.all()
    serializer_class = CategorySerializer
    permission_classes = [IsAuthenticatedOrReadOnly]

    @action(detail=True, methods=['get'],
            serializer_class=TicketSerializer,
            # queryset=Ticket.objects.all()
            # authentication_classes=[BasicAuthentication],
            permission_classes=[IsAuthenticatedOrReadOnly],
            )
    def tickets(self, request, *args, **kwargs):
        self.queryset = Ticket.objects.filter(category__exact=self.kwargs['pk'])
        return self.list(request, *args, **kwargs)


class TicketViewSet(viewsets.ModelViewSet):
    queryset = Ticket.objects.all()
    serializer_class = TicketSerializer
    permission_classes = [IsAuthenticatedOrReadOnly]

    @action(detail=True, methods=['get'],
            serializer_class=QuestionSerializer,
            # queryset=Ticket.objects.all()
            # authentication_classes=[BasicAuthentication],
            permission_classes=[IsAuthenticatedOrReadOnly],
            )
    def questions(self, request, *args, **kwargs):
        self.queryset = Question.objects.filter(ticket__exact=self.kwargs['pk'])
        return self.list(request, *args, **kwargs)


class QuestionViewSet(viewsets.ModelViewSet):
    queryset = Question.objects.all()
    serializer_class = QuestionSerializer
    permission_classes = [IsAuthenticatedOrReadOnly]
