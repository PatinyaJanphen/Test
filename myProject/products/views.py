from django.shortcuts import render
from django.http import HttpResponse
from .models import Product, Cart

# Create your views here.
def products(request):
    all_product = Product.objects.all()
    context = {'products':all_product}
    return render(request, 'products.html', context)

def product(request, product_id):
    one_product = None
    try:
        one_product = Product.objects.get(id=product_id)
    except:
        print('หาสินค้าไม่เจอ')
    context = {'product':one_product}
    return render(request, 'product.html', context)

# def cart(request):
#     all_product = Cart.objects.all()
#     context = {'cart':all_product}
#     return render(request, 'cart.html')