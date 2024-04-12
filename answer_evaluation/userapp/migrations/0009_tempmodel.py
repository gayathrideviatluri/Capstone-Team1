
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0008_remove_answermodel_marks_answermodel_score'),
    ]

    operations = [
        migrations.CreateModel(
            name='TempModel',
            fields=[
                ('answer_id', models.AutoField(primary_key=True, serialize=False)),
                ('subject', models.CharField(max_length=50, verbose_name='Subject')),
                ('question', models.CharField(blank=True, max_length=20000, null=True, verbose_name='Question')),
                ('answer', models.CharField(blank=True, max_length=20000, null=True, verbose_name='Answer')),
                ('score', models.CharField(max_length=200, null=True)),
            ],
            options={
                'db_table': 'temp_model',
            },
        ),
    ]
