
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0004_answermodel'),
    ]

    operations = [
        migrations.AlterField(
            model_name='answermodel',
            name='answer',
            field=models.CharField(blank=True, max_length=10000, null=True, verbose_name='Answer'),
        ),
    ]
