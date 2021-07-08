from django.contrib import admin
from .models import Feedback, ProductInformation

# Register your models here.

admin.site.register(Feedback)
admin.site.register(ProductInformation)
