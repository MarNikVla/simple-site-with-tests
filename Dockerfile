FROM python:3.11

COPY . /srv/www/gims-app
WORKDIR /srv/www/gims-app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DOCKER_ENV 1

RUN echo 'Hi, I am in your container'
RUN pip install pipenv
RUN pipenv install --system --deploy

#RUN python manage.py runserver 127.0.0.1:8000
#RUN echo 'Hi, I am in your container 2'
