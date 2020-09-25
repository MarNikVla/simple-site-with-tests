
from django.contrib import admin

from .forms import TicketAdminForm
from .models import TestCategory, Ticket, Question


@admin.register(TestCategory)
class TestCategoryAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug']
    prepopulated_fields = {'slug': ('name',)}


@admin.register(Ticket)
class TicketAdmin(admin.ModelAdmin):
    form = TicketAdminForm
    list_display = ['title', 'category', 'slug']
    prepopulated_fields = {'slug': ('title',)}


@admin.register(Question)
class QuestionAdmin(admin.ModelAdmin):

    list_display = ('title', 'get_tickets', 'get_tickets_category')

    @staticmethod
    def get_tickets(obj):
        return "\n".join([t.slug for t in obj.ticket.all()])

    @staticmethod
    def get_tickets_category(obj):
        return "\n".join([t.category.name for t in obj.ticket.all()])
