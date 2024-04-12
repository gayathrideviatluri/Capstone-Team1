
import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('adminapp', '0001_initial'),
        ('userapp', '0003_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='AnswerModel',
            fields=[
                ('answer_id', models.AutoField(primary_key=True, serialize=False)),
                ('answer_subject', models.CharField(max_length=50, verbose_name='Subject')),
                ('answer', models.CharField(blank=True, max_length=100, null=True, verbose_name='Answer')),
                ('marks', models.CharField(max_length=100, verbose_name='gender')),
                ('datetime_answered', models.DateTimeField(default=datetime.datetime.now)),
                ('question_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='Question', to='adminapp.questionmodel')),
                ('user_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='Examinee', to='userapp.userdetailsmodel')),
            ],
            options={
                'db_table': 'user_answers',
            },
        ),
    ]
