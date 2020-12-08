


from django.db import models

class User(models.Model):
    name = models.CharField(max_length=128)
    email = models.CharField(max_length=128)


u = User(name='Sally', email='a2@umich.edu')
u.save()

User.objects.values()
User.objects.filter(email='csev@umich.edu').values()

User.objects.filter(email='ted@umich.edu').delete()
User.objects.values()

User.objects.filter(email='csev@umich.edu').update(name='Charles')
User.objects.values()

User.objects.values().order_by('email')
User.objects.values().order_by('-name')


from django.db import connection
print(connection.queries)
