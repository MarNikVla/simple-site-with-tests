
from django.contrib import admin
from django import forms

from .forms import TicketAdminForm
from .models import TestCategory, Ticket, Question

# class TicketAdminForm(forms.ModelForm):

@admin.register(TestCategory)
class TestCategoryAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug']
    prepopulated_fields = {'slug': ('name',)}

@admin.register(Ticket)
class TicketAdmin(admin.ModelAdmin):
    form = TicketAdminForm
    list_display = ['title', 'category']
    prepopulated_fields = {'slug': ('title',)}

@admin.register(Question)
class QuestionAdmin(admin.ModelAdmin):
    list_display = ['title']
