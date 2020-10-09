from rest_framework import serializers


from tests_app.models import TestCategory, Ticket, Question


class TicketSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Ticket
        fields = '__all__'


class CategorySerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = TestCategory
        fields = '__all__'


class QuestionSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Question
        fields = "__all__"
