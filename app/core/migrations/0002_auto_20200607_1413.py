# Generated by Django 2.2.13 on 2020-06-07 14:13

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='user',
            old_name='is_acive',
            new_name='is_active',
        ),
    ]
