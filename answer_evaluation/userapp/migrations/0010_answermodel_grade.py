
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0009_tempmodel'),
    ]

    operations = [
        migrations.AddField(
            model_name='answermodel',
            name='grade',
            field=models.CharField(max_length=100, null=True, verbose_name='Grade'),
        ),
    ]
