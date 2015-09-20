# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0002_auto_20150910_1348'),
    ]

    operations = [
        migrations.AlterField(
            model_name='employee',
            name='empid',
            field=models.IntegerField(serialize=False, primary_key=True),
        ),
    ]
