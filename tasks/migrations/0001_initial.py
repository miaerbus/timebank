<<<<<<< HEAD
# -*- coding: utf-8 -*-
=======
# encoding: utf-8
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models

<<<<<<< HEAD

class Migration(SchemaMigration):

    def forwards(self, orm):
=======
class Migration(SchemaMigration):

    def forwards(self, orm):
        
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
        # Adding model 'Task'
        db.create_table('tasks_task', (
            ('name', self.gf('django.db.models.fields.CharField')(max_length=100, primary_key=True)),
            ('last_update', self.gf('django.db.models.fields.DateTimeField')()),
        ))
        db.send_create_signal('tasks', ['Task'])


    def backwards(self, orm):
<<<<<<< HEAD
=======
        
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
        # Deleting model 'Task'
        db.delete_table('tasks_task')


    models = {
        'tasks.task': {
            'Meta': {'object_name': 'Task'},
            'last_update': ('django.db.models.fields.DateTimeField', [], {}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100', 'primary_key': 'True'})
        }
    }

<<<<<<< HEAD
    complete_apps = ['tasks']
=======
    complete_apps = ['tasks']
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
