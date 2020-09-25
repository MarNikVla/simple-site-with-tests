from django import template
register = template.Library()

# Для итерации по ответам в шаблоне result.html
@register.filter
def index(indexable, i):
    return indexable[i]
