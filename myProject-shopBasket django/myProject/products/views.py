from django.shortcuts import render
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt

from .models import Product, Cart
from django.http import JsonResponse

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


def carts(request):
    all_product = Cart.objects.all()
    all_product_check = []
    for i in all_product:
        if request.user.id == i.author_id:
            all_product_check.append(i)

    context = {'carts':all_product_check}
    print(type(context))
    return render(request, 'cart.html', context)


def add_to_cart(request, product_id):
    if request.method == 'POST':
        all_product = Cart.objects.all()
        user = request.user.id
        for i in all_product:
            if i.product_id == product_id and i.author_id == user:
                i.quantity += 1
                cart, created = Cart.objects.get_or_create(author_id=user, product_id=product_id)
                cart.quantity += 1
                cart.save()
                return JsonResponse({'success': True})

        cart, created = Cart.objects.get_or_create(author_id=user, product_id=product_id, quantity=1)
        cart.save()
        return JsonResponse({'success': True})
    else:
        return JsonResponse({'success': False, 'message': 'Invalid request method'})