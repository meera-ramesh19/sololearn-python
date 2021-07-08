from django.shortcuts import render, HttpResponse
from .forms import FeedbackForm
from .models import ProductInformation

# Create your views here.
def feedback(request):
    if request.method == 'GET':
        form = FeedbackForm
        return render(request,'feedback.html',{
            'form': form,
        })

    elif request.method == 'POST':
        form = FeedbackForm(request.POST)
        if form.is_valid():
            form.save()
            return HttpResponse("Saved!")


def home(request):
    content = ProductInformation.objects.all()
    print("Content : ",content)
    return render(request, 'home.html',{
        'content' : content,
    })

def moreinfo(request):
    user_category = request.GET.get('category')
    content = ProductInformation.objects.filter(category=user_category).values_list('id','name','price')
    print("content : ",content)
    return render(request,'moreinfo.html',{
        'content' : content,
    })