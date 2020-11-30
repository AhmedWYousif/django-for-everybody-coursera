## Practice Quiz: Tutorial 4

### 1.These questions come from the Django project tutorial materials.What is stored in the variable request.POST?

    A dictionary-like object that lets you access submitted POST data

### 2.What does the django.urls.reverse() function do?

    It constructs the path to a view using the name of a path entry in urls.py

### 3.What happens if you access a detail view like results() in Django tutorial 4 and provide a key that does not exist on the URL?

    You get a 404

### 4.In the polls/templates/polls/detail.html file in Django tutorial 4, what happens if you leave out the csrf_token line in the form?

    The POST data will be blocked by the server

### 5.In the polls/templates/polls/detail.html file in Django tutorial 4, which bit of code tells the view that will receive the POST data which question to associate this vote with?

    url 'polls:vote' question.id

### 6.Which HTTP method is used when sending data to the server that will modify or update data?

    POST

### 7.What does the Django template filter "pluralize" do?

    It emits an 's' if the value is > 1
