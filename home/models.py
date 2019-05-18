from django.db import models
from django.contrib.auth.models import User
from math import floor
from django.utils.timezone import now

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    avatar = models.ImageField(upload_to="avatars/", default="/avatars/default-avatar.png")

    bookings = models.ManyToManyField('Place', through='Ticket')
    favorites = models.ManyToManyField('Place', blank=True, related_name='user_favprotes')
    
    last_seen = models.DateTimeField(default=now())

    def __str__(self):
        return "%s %s (%s)" %(self.user.first_name, self.user.last_name, self.user.username)


class Town(models.Model):
    name = models.CharField(max_length=25)

    def __str__(self):
        return self.name


class Category(models.Model):
    name = models.CharField(max_length=25)
    icon = models.ImageField()

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "Categories"


class Place(models.Model):
    posted_by = models.ForeignKey(Profile, on_delete=models.CASCADE)
    name = models.CharField(max_length=50)
    map_id = models.CharField(max_length=500)

    town = models.ForeignKey(Town, on_delete=models.CASCADE)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)

    phone_number = models.CharField(max_length=25)
    website = models.CharField(max_length=120, default="Not specified", blank=True)
    # location_lat = models.DecimalField(max_digits=15, decimal_places=9, verbose_name="Location Latitude")
    # location_lng = models.DecimalField(max_digits=15, decimal_places=9, verbose_name="Location Longitude")
    opening_hours = models.CharField(max_length=50, default="Not specified", blank=True)
    
    description = models.TextField()
    is_approved = models.BooleanField(verbose_name="Approved?", default=False)

    rating = models.DecimalField(max_digits=3, decimal_places=2, default=0, blank=True)
    post_date = models.DateTimeField(auto_now_add=True)
    views = models.PositiveIntegerField(default=0)

    def __str__(self):
        return self.name

    def get_place_new_rating(self, rating):
        # reviews = Review.objects.filter(place=self)
        # totalReviews = reviews.count()
        # avg_rating = ((self.rating * totalReviews) + rating) / (totalReviews + 1)
        reviews = Review.objects.filter(place=self)
        five = reviews.filter(rating=Rating.objects.get(stars=5))
        four = reviews.filter(rating=Rating.objects.get(stars=4))
        three = reviews.filter(rating=Rating.objects.get(stars=3))
        two = reviews.filter(rating=Rating.objects.get(stars=2))
        one = reviews.filter(rating=Rating.objects.get(stars=1))
        avg_rating = (5*five.count() + 4*four.count() + 3*three.count() + 2*two.count() + 1*one.count())
        avg_rating = avg_rating / reviews.count()
        return avg_rating

    def get_place_abs_rating(self):
        return floor(self.rating) 
    




class Ticket(models.Model):
    profile = models.ForeignKey(Profile, on_delete=models.CASCADE)
    place = models.ForeignKey(Place, on_delete=models.CASCADE)
    date = models.DateField(auto_now=True)
    expire_date = models.DateField()
    price = models.PositiveIntegerField()

    def __str__(self):
        return "%s's ticket for %s" %(self.profile, self.place)


class Image(models.Model):
    place = models.ForeignKey(Place, on_delete=models.CASCADE)
    image = models.ImageField()
    
    def __str__(self):
        return "%s's Image (%s)" %(self.place, self.id)

class Rating(models.Model):
    stars = models.PositiveIntegerField()
    text = models.CharField(max_length=25)
    image = models.ImageField(default="static/home/images/rating_stars/0_stars.png")

    def __str__(self):
        return "%s (%s)" %(self.text, self.stars)

class Review(models.Model):
    profile = models.ForeignKey(Profile, on_delete=models.CASCADE)
    place = models.ForeignKey(Place, on_delete=models.CASCADE)
    rating = models.ForeignKey(Rating, on_delete=models.CASCADE)
    comment = models.TextField()
    datetime = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return "%s's review on: %s" %(self.profile, self.place)

