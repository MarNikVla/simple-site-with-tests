from rest_framework import  serializers


from tests_app.models import TestCategory, Ticket, Question

class TicketSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Ticket
        fields = '__all__'

class CategorySerializer(serializers.HyperlinkedModelSerializer):
    # ticket123 = TicketSerializer(many=True, read_only=True)
    class Meta:
        model = TestCategory
        fields = '__all__'


        # lookup_field = 'slug'
        # extra_kwargs = {
        #     'url': {'lookup_field': 'slug'}
        # }




class QuestionSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Question
        fields = "__all__"