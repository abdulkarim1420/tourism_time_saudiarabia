from django import forms
from django.contrib.auth.models import User
from .models import Place, Review

class UserRegisterForm(forms.Form):
    first_name = forms.CharField(label='First name', max_length=100)
    last_name = forms.CharField(label='Last name', max_length=100)
    username = forms.CharField(label='Username', max_length=25)
    email = forms.EmailField(label='Email')
    password = forms.CharField(label='Password', widget=forms.PasswordInput)
    p_confirm = forms.CharField(label='Confirm password', widget=forms.PasswordInput)

    def clean(self):
        cleaned_data = super(UserRegisterForm, self).clean()
        password = cleaned_data.get("password")
        p_confirm = cleaned_data.get("p_confirm")

        if password != p_confirm:
            raise forms.ValidationError("Your password doesn't match, please check again.")


class AddPlaceForm(forms.ModelForm):
    class Meta:
        model = Place
        # Show all fields except is_approved
        exclude = ['is_approved']


class AddReviewForm(forms.ModelForm):
    class Meta:
        model = Review
        fields = ['rating', 'comment']

class EditProfileForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ['username', 'first_name', 'last_name']