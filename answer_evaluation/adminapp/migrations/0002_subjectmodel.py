
import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='SubjectModel',
            fields=[
                ('subject_id', models.AutoField(primary_key=True, serialize=False)),
                ('subject', models.CharField(max_length=100, verbose_name='Subject')),
                ('subject_image', models.FileField(upload_to='media', verbose_name='Photo')),
                ('datetime_created', models.DateTimeField(default=datetime.datetime.now)),
            ],
            options={
                'db_table': 'subject_details',
            },
        ),
    ]
