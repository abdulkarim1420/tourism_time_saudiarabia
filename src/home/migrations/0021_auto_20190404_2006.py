# Generated by Django 2.1.7 on 2019-04-04 17:06

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0020_auto_20190402_2320'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='last_seen',
            field=models.DateTimeField(default=datetime.datetime(2019, 4, 4, 17, 6, 8, 874451, tzinfo=utc)),
        ),
    ]