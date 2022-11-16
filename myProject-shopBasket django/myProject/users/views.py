from django.shortcuts import render
from users.froms import RegisterForm, UserProfileForm
from django.contrib.auth import login
from django.contrib.auth.decorators import login_required
from django.http import HttpRequest, HttpResponseRedirect
from django.urls import reverse

# Create your views here.

def register(request: HttpRequest):
    # POST
    if request.method == 'POST':
        form = RegisterForm(request.POST)
        if form.is_valid():
            user = form.save()
            # login(request, user)
            return HttpResponseRedirect(reverse('login'))
    else:
        form = RegisterForm()

    # GET
    context = {'form':form}
    return render(request, 'users/register.html', context)

@login_required
def dashboard(request: HttpRequest):
    return render(request, 'users/dashboard.html')

@login_required
def profile(request: HttpRequest):

    if request.method == 'POST':
        form = UserProfileForm(request.POST, instance=request.user)

        if form.is_valid():
            user = form.save()
            return HttpResponseRedirect(reverse('profile'))
    else :
        form = UserProfileForm(instance=request.user)

    context = {'form':form}
    return render(request, 'users/myProfile.html', context)    