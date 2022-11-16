from django.urls import path, include
from . import views

urlpatterns=[
    path('users/', include('django.contrib.auth.urls')),
    path('users/register/', view=views.register, name='register' ),
    path('users/dashboard/', view=views.dashboard, name='dashboard' ),
    path('users/profile/', view=views.profile, name='profile' ),
]