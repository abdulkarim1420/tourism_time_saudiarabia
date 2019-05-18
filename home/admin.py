from django.contrib import admin
from .models import (
    Town, 
    Category, 
    Place, 
    Profile, 
    Image,
    Ticket,
    Review,
    Rating
)

# Customize model Place listing.
class PlaceAdmin(admin.ModelAdmin):
    # Show the 'name' and 'is_approved' fields only
    list_display = ('name', 'is_approved')
    # Sort by approval first then the post date next.
    ordering = ('is_approved', '-post_date')


# Register your models here.
admin.site.register(Town)
admin.site.register(Category)
admin.site.register(Place, PlaceAdmin)
admin.site.register(Profile)
admin.site.register(Image)
admin.site.register(Ticket)
admin.site.register(Review)
admin.site.register(Rating)
