from django import forms

from tests_app.models import Ticket


# Форма для модели Ticket
class TicketAdminForm(forms.ModelForm):

    class Meta:
        model = Ticket
        fields = "__all__"

