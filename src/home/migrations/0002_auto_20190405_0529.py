# Generated by Django 2.1.7 on 2019-04-05 02:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='category',
            options={'verbose_name_plural': 'Categories'},
        ),
        # migrations.AddField(
        #     model_name='place',
        #     name='opening_hours',
        #     field=models.CharField(default='none', max_length=50),
        # ),
        migrations.AlterField(
            model_name='place',
            name='is_approved',
            field=models.BooleanField(verbose_name='Approved?'),
        ),
        migrations.AlterField(
            model_name='place',
            name='location_lat',
            field=models.DecimalField(decimal_places=9, max_digits=15, verbose_name='Location Latitude'),
        ),
        migrations.AlterField(
            model_name='place',
            name='location_lng',
            field=models.DecimalField(decimal_places=9, max_digits=15, verbose_name='Location Longitude'),
        ),
        migrations.AlterField(
            model_name='profile',
            name='favorites',
            field=models.ManyToManyField(blank=True, related_name='user_favprotes', to='home.Place'),
        ),
    ]