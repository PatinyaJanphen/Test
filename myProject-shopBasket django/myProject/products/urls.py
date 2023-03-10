from django.urls import path
from django.urls import re_path
from . import views

urlpatterns=[
    path('products/', views.products, name='products'),
    path('product/<int:product_id>', views.product, name='product'),
    path('add-to-cart/<int:product_id>', views.add_to_cart, name='add-to-cart'),
    path('cart/', views.carts, name='carts'),
]