import form as form
from django.contrib import admin
from django import forms

from .forms import TicketAdminForm
from .models import TestCategory, Ticket

# class TicketAdminForm(forms.ModelForm):

@admin.register(TestCategory)
class TestCategoryAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug']
    prepopulated_fields = {'slug': ('name',)}

@admin.register(Ticket)
class TicketAdmin(admin.ModelAdmin):
    form = TicketAdminForm

