from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='home-index'),
    path('login/', views.login_user, name='home-login'),
    path('logout/', views.logout_user, name='home-logout'),
    path('register/', views.register, name='home-register'),
    path('contact/', views.contact, name='home-contact'),
    path('places/<int:place_id>/', views.placeinfo, name='place-info'),
    path('places/<int:place_id>/favorite/', views.favorite, name='place-favorite'),
    path('places/<int:place_id>/unfavorite/', views.unfavorite, name='place-unfavorite'),
    path('places/', views.places, name='places-index'),
    path('places/new/', views.add_place, name='places-new'),
    path('profile/<int:user_id>/', views.profile, name='profile-index'),
    path('profile/<int:user_id>/edit/', views.edit_profile, name='profile-edit'),
]