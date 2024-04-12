
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0001_initial'),
    ]

    operations = [
        migrations.DeleteModel(
            name='UserdetailsModel',
        ),
    ]
