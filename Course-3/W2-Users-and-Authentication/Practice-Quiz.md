## Practice Quiz: Login and Authentication

### 1.Which came first?

    Cookie

### 2.Which came second?

    Session

### 3.Which best describes the Django functionality that puts up the login form?

    Application

### 4.Which best describes the Django functionality that supports sessions?

    Middleware

### 5.What happens when the user passes a login check?

    Information is added to the session

### 6.What string is returned by: `x = django.urls.reverse('login')`

    /accounts/login

### 7.What is the purpose of the *next* parameter on a login or logout URL?

    It tells the authentication system where to go after the action is complete

### 8.What is the value in a Django template to print out the current logged-in user's email address?

    user.email

### 9.In a Django template, what is stored in the request.path variable?

    The URL of the currently executing request

### 10.What is the default name of the template that Django will load when presenting the user with a login screen?

    registration/login.html

### 11.What variable do you check in a Django view to see if this request is from a logged-in user?

    request.user.is_authenticated

### 12.What Django class does a class-based view need to extend to indicate that the view can only be accessed by logged-in users?

    LoginRequiredMixin
