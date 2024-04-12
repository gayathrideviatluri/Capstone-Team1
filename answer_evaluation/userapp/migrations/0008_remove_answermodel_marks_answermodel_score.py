
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0007_remove_answermodel_question_id_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='answermodel',
            name='marks',
        ),
        migrations.AddField(
            model_name='answermodel',
            name='score',
            field=models.IntegerField(null=True),
        ),
    ]
