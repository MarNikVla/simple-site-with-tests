# Generated by Django 3.1.1 on 2020-09-17 07:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('tests_app', '0007_auto_20200915_1525'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ticket',
            name='category',
            field=models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, related_name='tickets', to='tests_app.testcategory'),
        ),
    ]
