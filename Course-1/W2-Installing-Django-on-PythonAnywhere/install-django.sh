# Installing Django on PythonAnywhere
# Before you start this assignment, you should already have signed up for a PythonAnywhere account and be logged in on your account. You should be able to complete all of the exercises in this course using a free PythonAnywhere account.

# Setting Up Your Environment
mkvirtualenv django3 --python=/usr/bin/python3.6
pip install django ## this may take a couple of minutes

# Note if you exit and re-start a new shell on PythonAnywhere - you need the following command to get back into your virtual environment in the new bash shell.

workon django3

# Lets make sure that your django was installed successfully with the following command:

python -m django --version
# This should show something like 3.0.2

#=========================================

# Installing the Sample Code for DJ4E
# Lets also get a copy of the sample code for DJ4E checked out so you can look at sample code as the course progresses and install some important additional Django software libraries using pip.

cd ~
git clone https://github.com/csev/dj4e-samples
cd dj4e-samples
pip install -r requirements.txt

python3 manage.py check
# This is the normal output of running check:

# When you want to use social login, please see dj4e-samples/github_settings-dist.py
# Using registration/login.html as the login template
# System check identified no issues (0 silenced).
# If the check identifies errors, stop until there are no errors. Only take the next steps once check sees no errors. Once the check works do:

python3 manage.py makemigrations
# This is the normal output of the makemigrations:

# When you want to use social login, please see dj4e-samples/github_settings-dist.py
# Using registration/login.html as the login template
# No changes detected

python3 manage.py migrate
# If you are doing this for the first time, it should run some migrations and create a file db.sqlite3.

# The dj4e-samples folder is reference material that you can use through out the course. 
# From time to time we might make changes to this and ask you to do a git pull to get the latest version of the code.

#======================================================

# Building Your Application
# Now that we have your Django set up and you have retrieved the sample code for DJ4E,
# lets build your first application in the PYAW shell:

cd ~
mkdir django_projects
cd django_projects
django-admin startproject mysite

# You need to edit the file ~/django_projects/mysite/mysite/settings.py and change the allowed hosts line (around line 28) to be:

 ALLOWED_HOSTS = [ '*' ]

# Leave the DEBUG value set to True - we are not really "in production" and if you set this to False you will not see error messages when you make mistakes.

#======================================================

# Editing Files on PythonAnywhere
# There are three ways to edit files in your PythonAnywhere environment, ranging from the easiest to the coolest. You only have to edit the file one of these ways.

# (1) Go to the main PythonAnywhere dashboard, browse files, navigate to the correct folder and edit the file

/home/drchuck/django_projects/mysite/mysite/settings.py

# (2) Or in the command line:
cd ~/django_projects/mysite/mysite/
nano settings.py
# Save the File by pressing 'CTRL-X', 'Y', and Enter

# (3) Don't try this most difficult and most cool way to edit files on Linux without a helper if it is your first time with the vi text editor.

cd ~/django_projects/mysite/mysite/
vi settings.py

# Once you have opened vi, cursor down to the ALLOWED_HOSTS line, position your cursor between the braces and press the i key to go into 'INSERT' mode, then type your new text and press the esc key when you are done. To save the file, you type :wq followed by enter. If you get lost press escape :q! enter to get out of the file without saving.

# If you aleady know some other command line text editor in Linux, you can use it to edit files. In general, you will find that it often quicker and easier to make small edits to files in the command line rather than a full screen UI. And once you start deploying real applications in production environments like Google, Amazon, Microsoft, etc.. all you will have is command line.

#==================================================

# Running Your Application
# Now that we have built your first application, we need to tell PythonAnywhere where to look to run your application as a web server so you can test it.

# In the PYAW web interface navigate to the Web tab to create a new web application. If you have not already done so, 
# add a new web application. Select manual configuration and Python 3.6. 
# Once the webapp is created, you need to make a few changes to the settings for the web app and your application.

Source code: /home/ahmedyousif/django_projects/mysite
Working directory: /home/ahmedyousif/django_projects/mysite
Virtualenv: /home/ahmedyousif/.virtualenvs/django3
# Note that once you have your Virtualenv set up you have a very convenient link titled "Start a console in this virtualenv" 
# this is a great way to open up consoles so you never have to type "workon django3" and it makes sure your virtual envronment is properly set up and configured. Sample image

# Then edit the WGSI Configuration File and put the following code into it. 
# Make sure to delete the existing content of the WGSI Configuration File file and completely replace it with the text below. 
# This is slightly different from the sample in the PythonAnywhere tutorial.

import os
import sys

path = os.path.expanduser('~/django_projects/mysite')
if path not in sys.path:
    sys.path.insert(0, path)
os.environ['DJANGO_SETTINGS_MODULE'] = 'mysite.settings'
from django.core.wsgi import get_wsgi_application
from django.contrib.staticfiles.handlers import StaticFilesHandler
application = StaticFilesHandler(get_wsgi_application())

#======================================================

# Adding Your Polls Application
# At this point, you can add the polls application from the first DJango tutorial. 
# We are jumping into the middle of this tutorial because the first part of the tutorial is installing and configuring Django in general.

# The first step is to make the polls application:

cd ~/django_projects/mysite
python3 manage.py startapp polls

# from django.http import HttpResponse
# # Create your views here.
# def index(request):
#     return HttpResponse("Hello, world. d139db6a is the polls index.")


# # mysite/urls.py

# from django.contrib import admin
# from django.urls import include, path

# urlpatterns = [
#     path('polls/', include('polls.urls')),
#     path('admin/', admin.site.urls),
# ]

# # polls.urls.py

# from django.urls import path
# from . import views

# urlpatterns = [
#     path('', views.index, name='index'),
# ]



# Continue to follow the steps outlined in Django tutorial. until you reach the part where the tutorial tells you to run this command:

python3 manage.py runserver

# Do not run the runserver command on PythonAnywhere. Instead run the following command:

python3 manage.py check

# The check does a check for syntax and logic errors in your Django application. It is easier to fix errors in the command line. 
# And when there are no errors, navigate to the Web tab in Python anywhere and Reload your application and then test your application by navigating to:

(your-account).pythonanywhere.com/polls
You should see a line that looks like:

Hello, world. You're at the polls index.
Going forward, every time we make changes to our application, we should run

python3 manage.py check
in the shell, and when that shows no errors, navigate to the Web, press Reload, and then go to your web site to test your changes. This pattern of change, reload, and test will become second nature after a while.

Possible Errors
If your application passed a check but fails to load or reload, you might get an error message that looks like this.

If you get an error, you will need to look through the error logs under the Web tab on PythonAnywhere:


