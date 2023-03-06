from django.urls import path
from . import views

urlpatterns=[
    path('products/', views.products, name='products'),
    path('products/<int:product_id>', views.product, name='product'),
    path('cart/', views.carts, name='carts')
]