
import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='QuestionModel',
            fields=[
                ('question_id', models.AutoField(primary_key=True, serialize=False)),
                ('question', models.CharField(max_length=10000, verbose_name='Question')),
                ('answer', models.CharField(blank=True, max_length=10000, null=True, verbose_name='Answers')),
                ('subject', models.CharField(max_length=100, verbose_name='Subject')),
                ('datetime_created', models.DateTimeField(default=datetime.datetime.now)),
            ],
            options={
                'db_table': 'question_answer',
            },
        ),
    ]
