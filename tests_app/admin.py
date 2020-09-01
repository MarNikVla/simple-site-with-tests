from django.contrib import admin

from .models import TestCategory, Ticket


@admin.register(TestCategory)
class TestCategoryAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug']
    prepopulated_fields = {'slug': ('name',)}

@admin.register(Ticket)
class TicketAdmin(admin.ModelAdmin):

    pass
