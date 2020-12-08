## Practice Quiz • Cookies and Sessions

### 1.What part of a Django application handles session management?

    Middleware

### 2.Where are cookies stored?

    In the browser

### 3.Which protocol determines how cookies are sent back and forth?

    HTTP

### 4.Which of the following Python structures is most like cookie storage?

    dictionary

### 5.Any server can read any cookie from any other server.

    False

### 6.What kind of cookies are deleted when the browser is closed?

    Session cookies

### 7.What is the method you call in a Django view to set a cookie?

    response.set_cookie()

### 8.How many times do you need to set a cookie for it to persist across a number of incoming requests?

    Once

### 9.What is the typical approach to making a session identifier?

    Choose a large random number

### 10.Where is session data typically stored in a Django application?

    In the server

### 11.How do you set a key of 'abc' to the value 'test' in the session in a Django application?

    request.session['abc'] = 'test';
