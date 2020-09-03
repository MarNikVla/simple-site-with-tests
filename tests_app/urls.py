from django.urls import path

from tests_app.views import Index

urlpatterns = [
    path('', Index.as_view(), name='index'),
]