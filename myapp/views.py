# Create your views here.

from django.shortcuts import render, redirect, render_to_response
from  . forms import EmployeeForm
from django.http import HttpResponse
def my_view(request):
    if request.method == 'POST':
        form = EmployeeForm(request.POST)
        if form.is_valid():
            #form.save()
            cd = form.cleaned_data
            form.save()
            return HttpResponse("Thank you for registering with Docker Team, " + cd['name'] + '!!!')
        return render(request, 'myapp/form.html', {'form': form})
    else:
        form = EmployeeForm()
        return render(request, 'myapp/form.html', {'form': form})

#def hello(request):
#    #print "Thank you for registering with Docker Team, " + NAME
#    return HttpResponse("Thank you for registering with Docker Team, " + NAME) 
