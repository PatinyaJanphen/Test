from django.db import models
from django.contrib.auth.models import User
# from django.conf import settings

# Create your models here.

class Product(models.Model):
    name_product = models.CharField(max_length=60)
    price = models.IntegerField()
    special_price = models.IntegerField(null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    material = models.CharField(max_length=60, null=True, blank=True)
    image = models.ImageField(upload_to='productsImage',null=True, blank=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name_product

class Cart(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.IntegerField(null=True, blank=True)
    author = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    updated = models.DateTimeField(auto_now=True)