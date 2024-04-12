
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0006_alter_answermodel_datetime_answered'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='answermodel',
            name='question_id',
        ),
        migrations.AlterField(
            model_name='answermodel',
            name='answer',
            field=models.CharField(blank=True, max_length=20000, null=True, verbose_name='Answer'),
        ),
    ]
