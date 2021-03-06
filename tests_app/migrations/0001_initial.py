# Generated by Django 3.1.1 on 2020-09-28 10:31

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='TestCategory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(db_index=True, max_length=200)),
                ('slug', models.SlugField(max_length=200, unique=True)),
            ],
            options={
                'verbose_name': 'test_category',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='Ticket',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50)),
                ('slug', models.SlugField(max_length=200)),
                ('category', models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, related_name='tickets', to='tests_app.testcategory')),
            ],
            options={
                'unique_together': {('category', 'slug')},
            },
        ),
        migrations.CreateModel(
            name='Question',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50)),
                ('text', models.TextField()),
                ('image', models.ImageField(upload_to='images/%Y/%m/%d/')),
                ('answers', models.TextField(default='')),
                ('correct_answer', models.TextField(default='')),
                ('ticket', models.ManyToManyField(related_name='questions', to='tests_app.Ticket')),
            ],
        ),
    ]
