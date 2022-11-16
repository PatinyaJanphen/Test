from django.contrib import admin
from products.models import Product

# Register your models here.
class ProductAdmin(admin.ModelAdmin):
    list_display = ['name_product', 'price']
    search_fields = ['name_product']
    list_filter = ['material']


admin.site.register(Product, ProductAdmin)