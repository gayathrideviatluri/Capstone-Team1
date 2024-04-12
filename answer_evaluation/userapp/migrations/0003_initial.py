
import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('userapp', '0002_delete_userdetailsmodel'),
    ]

    operations = [
        migrations.CreateModel(
            name='UserdetailsModel',
            fields=[
                ('user_id', models.AutoField(primary_key=True, serialize=False)),
                ('user_name', models.CharField(max_length=50, verbose_name='Name')),
                ('user_email', models.CharField(blank=True, max_length=100, null=True, verbose_name='Email')),
                ('user_contact', models.BigIntegerField(verbose_name='contact')),
                ('user_password', models.CharField(max_length=100, verbose_name='Password')),
                ('student_id', models.CharField(max_length=100, verbose_name='gender')),
                ('user_photo', models.FileField(upload_to='media', verbose_name='Photo')),
                ('datetime_created', models.DateTimeField(default=datetime.datetime.now)),
                ('user_status', models.CharField(default='pending', max_length=50, null=True)),
            ],
            options={
                'db_table': 'user_details',
            },
        ),
    ]
