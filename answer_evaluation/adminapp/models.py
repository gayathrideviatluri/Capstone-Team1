from django.db import models
from datetime import datetime
from asyncio.windows_events import NULL
from operator import mod

# Create your models here.

class QuestionModel(models.Model):
    question_id = models.AutoField(primary_key=True)
    question = models.CharField(verbose_name='Question', max_length=10000, blank=False,null=False)
    answer = models.CharField(verbose_name='Answers', max_length=10000, null=True, blank=True)
    subject=models.CharField(verbose_name='Subject',max_length=100,blank=False,null=False)
    datetime_created = models.DateTimeField(default=datetime.now)
    

    class Meta:
        db_table='question_answer'


class SubjectModel(models.Model):
    subject_id = models.AutoField(primary_key=True)
    subject = models.CharField(verbose_name='Subject', max_length=100, blank=False,null=False)
    subject_image= models.FileField(verbose_name='Photo', upload_to='media', blank=False)
    datetime_created = models.DateTimeField(default=datetime.now)
    

    class Meta:
        db_table='subject_details'