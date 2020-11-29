## Practice Quiz: Generic Views

### 1.In the class django.views.generic.list.ListView, which of the following methods is called earliest in the process?

    get_template_names()

### 2.In the class django.views.generic.list.ListView, which of the following methods is called latest in the process?

    render_to_response()

### 3.In the class django.views.generic.detail.DetailView, which of the following methods is called earliest in the process?

    dispatch()

### 4.In the class django.views.generic.detail.DetailView, which of the following methods is called latest in the process?

    render_to_response()

### 5.By convention when using an app_name of "abc" and a model of "Dog", if you use a View that extends django.views.generic.detail.DetailView, what is the file name that will be used for the template?

    templates/abc/dog_detail.html

### 6.If you want to override the template name chosen by convention in a View that extends django.views.generic.detail.DetailView, what is the name of the class attribute variable that you use?

    template_name

### 7.By convention when using an app_name of "abc" and a model of "Dog", if you use a View that extends django.views.generic.list.ListView, what is the name of the context variable that will include all the Dog objects in the template when it is being rendered?

    dog_list

### 8.For the following line in a views.py file `class ArticleListView(ListView):` what is the best description of "ListView"?

    The class that is being extended

### 9.For the following line in a views.py file `class ArticleListView(ListView):` what is the best description of "ArticleListView"?

    The class that is being created

### 10.For the following line in a urls.py file
```
urlpatterns = [
path('', TemplateView.as_view(template_name='gview/main.html'))
```
### where would you find the actual code for TemplateView?

    In the Django source
