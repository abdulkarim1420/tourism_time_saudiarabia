# Generated by Django 2.1.7 on 2019-03-20 17:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0015_place_post_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='place',
            name='rating',
            field=models.DecimalField(blank=True, decimal_places=2, default=0, max_digits=3),
        ),
    ]
