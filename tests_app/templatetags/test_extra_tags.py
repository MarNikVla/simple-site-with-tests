from django import template
register = template.Library()

# ��� �������� �� ������� � ������� result.html
@register.filter
def index(indexable, i):
    return indexable[i]
