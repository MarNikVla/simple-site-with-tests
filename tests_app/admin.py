
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


# Для отображения билета в QuestionAdmin
def get_tickets(obj):
    return "\n".join([t.title for t in obj.ticket.all()])
get_tickets.short_description = 'Ticket'


# Для отображения билета в QuestionAdmin
def get_tickets_category(obj):
    return "\n".join([t.category.name for t in obj.ticket.all()])
get_tickets_category.short_description = 'Category'


@admin.register(Question)
class QuestionAdmin(admin.ModelAdmin):
    list_display = ('title', get_tickets, get_tickets_category)
