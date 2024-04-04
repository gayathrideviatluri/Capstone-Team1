from django.db import models
from datetime import datetime
from asyncio.windows_events import NULL
from operator import mod
from adminapp.models import *
from django.utils import timezone

# Create your models here.
class UserdetailsModel(models.Model):
    user_id = models.AutoField(primary_key=True)
    user_name = models.CharField(verbose_name='Name', max_length=50, blank=False,null=False)
    user_email = models.CharField(verbose_name='Email', max_length=100, null=True, blank=True)
    user_contact = models.BigIntegerField(verbose_name='contact', blank=False,null=False)
    user_password=models.CharField(verbose_name='Password',max_length=100,blank=False,null=False)
    student_id = models.CharField(verbose_name='gender',max_length=100, blank=False,null=False)
    user_photo = models.FileField(verbose_name='Photo', upload_to='media', blank=False)
    datetime_created = models.DateTimeField(default=datetime.now)
    user_status=models.CharField(default='pending',max_length=50,null=True)
    

    class Meta:
        db_table='user_details'


class AnswerModel(models.Model):
    answer_id = models.AutoField(primary_key=True)
    answer_subject = models.CharField(verbose_name='Subject', max_length=50, blank=False,null=False)
    answer = models.CharField(verbose_name='Answer', max_length=20000, null=True, blank=True)
    user_id = models.ForeignKey(UserdetailsModel,on_delete=models.CASCADE, related_name='Examinee',null=True)
    score = models.IntegerField(blank=False,null=True)
    grade = models.CharField(verbose_name='Grade', max_length=100, blank=False,null=True)
    datetime_answered = models.DateTimeField(default=timezone.now)
    

    class Meta:
        db_table='user_answers'

class TempModel(models.Model):
    answer_id = models.AutoField(primary_key=True)
    subject = models.CharField(verbose_name='Subject', max_length=50, blank=False,null=False)
    question = models.CharField(verbose_name='Question', max_length=20000, null=True, blank=True)
    answer = models.CharField(verbose_name='Answer', max_length=20000, null=True, blank=True)
    score = models.CharField(max_length=200,blank=False,null=True)
    

    class Meta:
        db_table='temp_model'