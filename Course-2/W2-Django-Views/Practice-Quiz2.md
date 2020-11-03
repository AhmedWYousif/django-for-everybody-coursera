# Practice Quiz: Tutorial 3

### 1.These questions come from the Django project tutorial materials.When you see a path with the following pattern in urls.py, path('<int:question_id>/', views.detail, name='detail'), where in the code does the question_id value parsed from the URL end up?

    As an additional parameter to the detail() view

### 2.What kind of data is passed into a view in the 'request' object?

    Information about the incoming HTTP request from the browser

### 3.Which of the following SQL commands will be run by the Question.objects.values() statement in a view function?

    SELECT

### 4.How do you indicate that a particular question cannot be found in a detail view?

    Raise an Http404 exception

### 5.How do you retrieve only the first five objects in a table using a Django model query?

    Add [:5] to the end of the model query

### 6.In Django, why do we add an extra folder (i.e., namespace) our templates?

    To make sure there is not a conflict with a template of the same name in a different application

### 7.What is the difference between a list view and detail view?

    A list view shows multiple items and a detail view shows only one item

### 8.What is a "404" error?

    It tells a browser that it did not get the page it was looking for

### 9.In Django, what is the default language used in HMTL template files?

    DTL - Django Templating language

### 10.If the "get_object_or_404()" helper function finds the requested item, it returns the item. What happens if it cannot return the item?

    It raises an Http404 exception

### 11.Why do we name space URL names using the "app_name" variable in the urls.py file?

    In case we have multiple applications with the same named path
