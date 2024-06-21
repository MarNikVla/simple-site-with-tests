FROM python:3.11

COPY . /srv/www/gims-app
WORKDIR /srv/www/gims-app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DOCKER_ENV 1

RUN echo 'Hi, I am in your container'
RUN pip install pipenv
RUN pipenv install --system --deploy --ignore-pipfile

#RUN gunicorn -c gunicorn.py simple_site_with_tests.wsgi
#RUN python manage.py runserver 0.0.0.0:8000
#RUN echo 'Hi, I am in your container 2' --access-logfile
