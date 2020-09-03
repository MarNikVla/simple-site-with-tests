from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include

from tests_app.views import Index

urlpatterns = [
    path('', Index.as_view(), name='index'),
    path('admin/', admin.site.urls),
    path('tests/', include('tests_app.urls')),
]
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL,
                           document_root = settings.STATIC_ROOT)