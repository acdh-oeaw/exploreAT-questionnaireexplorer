# Generated by Django 2.0.1 on 2018-01-15 16:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('questions', '0003_auto_20180115_1627'),
    ]

    operations = [
        migrations.AddField(
            model_name='questionlist',
            name='object',
            field=models.CharField(blank=True, max_length=255),
        ),
    ]