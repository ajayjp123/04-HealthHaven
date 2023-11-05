from django.db import models
from django.core.validators import FileExtensionValidator

news_img = models.FileField(upload_to="pictures/%Y/%m/", validators=[FileExtensionValidator(['pdf', 'doc', 'svg'])])
# Create your models here.
class HospitalDetails(models.Model):
    HospitalID=models.CharField(max_length=20)
    HospitalName=models.CharField(max_length=35)
    NoOfBeds=models.IntegerField()
    OxygenCylinders=models.IntegerField()
    Ventilators=models.IntegerField()
    TravelTimeHours=models.IntegerField()
    TravelTimeMinutes=models.IntegerField()

class resourceRequirements(models.Model):
    Bed=models.IntegerField()
    O2=models.IntegerField()
    Type=models.CharField(max_length=20)
    