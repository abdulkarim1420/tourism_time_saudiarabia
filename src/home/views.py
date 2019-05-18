from django.shortcuts import render, get_list_or_404, get_object_or_404
from django.core.paginator import Paginator
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .models import Place, Image, Review, Town, Profile, Rating, Category
from django.contrib.auth.models import User
from .forms import UserRegisterForm, AddPlaceForm, AddReviewForm, EditProfileForm

def index(request):
    categories = get_list_or_404(Category)
    #places = get_list_or_404(Place)
    #reviews = get_list_or_404(Review)
	
    most_recent = Place.objects.filter(is_approved=True).order_by("-post_date")[:4]
    most_popular = Place.objects.filter(is_approved=True).order_by("-views")[:4]

    context = {
        'home_page': "active",
        'categories': categories,
		'most_popular': most_popular,
		'most_recent': most_recent,
    }
    
    return render(request, 'home/index.html', context)


def login_user(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)
            return HttpResponseRedirect(request.POST['next'])
        
    context = {
        'title': 'Sign In',
        'login_page': 'active',
        'next': request.GET.get('next', reverse('home-index'))
    }

    return render(request, 'home/login.html', context)


def logout_user(request):
    logout(request)
    return HttpResponseRedirect(reverse('home-index'))


def register(request):
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = UserRegisterForm(request.POST)
        # check whether it's valid:
        if form.is_valid():
            # process the data in form.cleaned_data as required
            user = User.objects.create_user(
                form.cleaned_data['username'],
                form.cleaned_data['email'],
                form.cleaned_data['password']
            )

            user.first_name = form.cleaned_data['first_name']
            user.last_name = form.cleaned_data['last_name']
            
            user.save()

            login(request, user)
            # redirect to a new URL:
            return HttpResponseRedirect(reverse('home-index'))
    else:
        form = UserRegisterForm()

    context = {
        'title': 'Sign Up',
        'register_page': 'active',
        'form': form
    }
    return render(request, 'home/register.html', context)


def contact(request):
    context = {
        'title': 'Contact Us',
        'contact_page': 'active'
    }
    return render(request, 'home/contact.html', context)


def placeinfo(request, place_id):
    place = get_object_or_404(Place, id=place_id)
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = AddReviewForm(request.POST)
        # check whether it's valid:
        if form.is_valid():
            try:
                new_review = Review.objects.get(place=place, profile=request.user.profile)
                new_review.comment = request.POST['comment']
            except Review.DoesNotExist:
                new_review = form.save(commit=False)
                new_review.place = Place.objects.get(id=place_id)
                new_review.profile = request.user.profile
                messages.success(request, 'Your Review has been added.')

            new_review.rating = Rating.objects.get(stars=request.POST['rating'])
            new_review.save()
            place.rating = place.get_place_new_rating(new_review.rating.stars)
            place.save()

            
        else:
            print(form.errors)

    reviews = Review.objects.filter(place=place_id).order_by('-datetime')

    images = Image.objects.filter(place=place_id)

    if request.user.is_authenticated:
        try:
            review = Review.objects.get(place=place, profile=request.user.profile)
        except Review.DoesNotExist:
            review = False

        if review:
            form = AddReviewForm(instance=review)
        else:
            form = False
    else:
        form = False

    if request.user.is_authenticated:
        favorite_state = request.user.profile.favorites.filter(id=place.id).exists()
    else:
        favorite_state = False

    # Count view
    place.views = place.views+1
    place.save()

    context = {
        'title': place.name,
        'browse_page': 'active',
        'place': place,
        'reviews': reviews,
        'images': images,
        'form': form,
        'is_favoured': favorite_state
    }
    return render(request, 'home/placeinfo.html', context)

def places(request):
    category = request.GET.get('category')
    
    if category:
        places = Place.objects.filter(category=category, is_approved=True).order_by('-post_date')
        current_category = Category.objects.get(id=category)
    else:
        places = Place.objects.filter(is_approved=True).order_by('-post_date')
        current_category = False

    paginator = Paginator(places, 5)

    page = request.GET.get('page')
    places = paginator.get_page(page)

    categories = get_list_or_404(Category)

    context = {
        'title': 'Places',
        'browse_page': 'active',
        'places': places,
        'categories': categories,
        'current_category': current_category
    }
    return render(request, 'home/places.html', context)

@login_required
def add_place(request):
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = AddPlaceForm(request.POST)
        # check whether it's valid:
        if form.is_valid():
            # Save new place
            new_place = form.save()
            messages.success(request, 'The Place has been added.')
            # Get uploaded pictures as a list
            pictures = request.FILES.getlist('files')

            # Loop over them and save each one
            for pic in pictures:
                image = Image(place=new_place, image=pic)
                image.save()


    form = AddPlaceForm()

    context = {
        'title': 'Places: Add New',
        'browse_page': 'active',
        'form': form,
        'profile': get_object_or_404(Profile, user=request.user.id)
    }
    return render(request, 'home/add_place.html', context)


def profile(request, user_id):
    user = get_object_or_404(User, id=user_id)
    profile = Profile.objects.get(user = user)

    state = "active" if request.user.id == user_id else ""

    context = {
        'title': 'Profile: %s' %(user.username),
        'user_profile': state,
        'profile': profile,
    }
    return render(request, 'home/profile.html', context)

@login_required
def edit_profile(request, user_id):
    user = get_object_or_404(User, id=user_id)
    profile = Profile.objects.get(user=user)

    # Prevent someone else from editing others profile
    if request.user != user:
        return HttpResponseRedirect(reverse('profile-index', args=[request.user.id]))

    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = EditProfileForm(request.POST, instance=user)
        # check whether it's valid:
        if form.is_valid():
            #user.username = request.POST['username']
            #user.first_name = request.POST['first_name']
            #user.last_name = request.POST['last_name']
            user.save()
            #User.objects.filter(id=user_id).update(username=request.POST['username'], first_name=request.POST['first_name'], last_name=request.POST['last_name'])

            #print(request.FILES['avatar'])
            # Check for avatar update
            if request.FILES.get('avatar', False):
                profile.avatar = request.FILES['avatar']
                profile.save()
                #profile.update(avatar=request.FILES['avatar'])

            messages.success(request, 'Your profile has been updated successfully.')
            return HttpResponseRedirect(reverse('profile-index', kwargs={'user_id': request.user.id}))
        else:
            print(form.errors)

    form = EditProfileForm(instance=user)

    context = {
        'title': 'Profile Edit: %s' %(user.username),
        'user_profile': 'active',
        'profile': profile,
        'form': form,
		'user': user,
    }
    return render(request, 'home/edit_profile.html', context)

def favorite(request, place_id):
    user = get_object_or_404(User, id=request.user.id)
    profile = Profile.objects.get(user = user)

    place = Place.objects.get(id=place_id)
    profile.favorites.add(place)
    messages.success(request, 'This place has been added to your favourites.')

    next = request.GET['next']
    if next:
       return HttpResponseRedirect(next)
    else: 
        return HttpResponseRedirect(reverse('places-index'))

def unfavorite(request, place_id):
    user = get_object_or_404(User, id=request.user.id)
    profile = Profile.objects.get(user = user)

    place = Place.objects.get(id=place_id)
    profile.favorites.remove(place)
    messages.success(request, 'This place has been removed from your favourites.')
    

    return HttpResponseRedirect( request.GET.get('next', reverse('places-index')) )


