
from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0005_alter_answermodel_answer'),
    ]

    operations = [
        migrations.AlterField(
            model_name='answermodel',
            name='datetime_answered',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
    ]
