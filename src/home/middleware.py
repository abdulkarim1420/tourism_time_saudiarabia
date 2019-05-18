from django.utils.timezone import now
from .models import Profile

def LastSeenMiddleware(get_response):
    # One-time configuration and initialization.

    def middleware(request):
        # Code to be executed for each request before
        # the view (and later middleware) are called.

        response = get_response(request)

        # Code to be executed for each request/response after
        # the view is called.
        if request.user.is_authenticated:
            Profile.objects.filter(user=request.user).update(last_seen=now())

        return response

    return middleware