
# get version of django
python -m django --version

# run server
python manage.py runserver

# Create App 
python manage.py startapp polls

# Create migration for polls app
python manage.py makemigrations polls

# Create Sql script of migration 
python manage.py sqlmigrate polls 0001

# Check Project Problems
 python manage.py check

 # Run migrations
 python manage.py migrate

 # interactive python shell
 python manage.py shell

# Create super user 
python manage.py createsuperuser


