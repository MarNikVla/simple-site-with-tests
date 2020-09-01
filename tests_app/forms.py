from django import forms

from tests_app.models import Ticket


class TicketAdminForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(TicketAdminForm, self).__init__(*args, **kwargs)
        self.fields['answers'].widget = forms.TextInput()


    class Meta:
        model = Ticket
        fields = "__all__"

# class MyAdmin(admin.ModelAdmin):
#     fields = ['name', 'by_admin']
#     form = MyAdminForm