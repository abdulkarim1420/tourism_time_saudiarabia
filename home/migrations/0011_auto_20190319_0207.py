# Generated by Django 2.1.7 on 2019-03-18 23:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0010_place_opening_hours'),
    ]

    operations = [
        migrations.AlterField(
            model_name='place',
            name='opening_hours',
            field=models.CharField(blank=True, default='Not specified', max_length=50),
        ),
        migrations.AlterField(
            model_name='place',
            name='website',
            field=models.CharField(blank=True, default='Not specified', max_length=120),
        ),
    ]
