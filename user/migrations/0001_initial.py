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
        # Adding model 'Profile'
        db.create_table('user_profile', (
            ('user_ptr', self.gf('django.db.models.fields.related.OneToOneField')(to=orm['auth.User'], unique=True, primary_key=True)),
            ('photo', self.gf('django.db.models.fields.files.ImageField')(max_length=100, null=True, blank=True)),
            ('birth_date', self.gf('django.db.models.fields.DateField')(default=datetime.datetime(2013, 5, 1, 0, 0))),
            ('address', self.gf('django.db.models.fields.CharField')(default=u'address', max_length=100)),
            ('balance', self.gf('django.db.models.fields.IntegerField')(default=600)),
=======
class Migration(SchemaMigration):

    def forwards(self, orm):
        
        # Adding model 'Profile'
        db.create_table('user_profile', (
            ('user_ptr', self.gf('django.db.models.fields.related.OneToOneField')(to=orm['auth.User'], unique=True, primary_key=True)),
            ('birth_date', self.gf('django.db.models.fields.DateField')()),
            ('address', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('balance', self.gf('django.db.models.fields.IntegerField')(default=0)),
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
            ('description', self.gf('django.db.models.fields.TextField')(max_length=300, blank=True)),
            ('land_line', self.gf('django.db.models.fields.CharField')(max_length=20)),
            ('mobile_tlf', self.gf('django.db.models.fields.CharField')(max_length=20)),
            ('email_updates', self.gf('django.db.models.fields.BooleanField')(default=True)),
<<<<<<< HEAD
            ('lang_code', self.gf('django.db.models.fields.CharField')(default='', max_length=10)),
=======
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
        ))
        db.send_create_signal('user', ['Profile'])


    def backwards(self, orm):
<<<<<<< HEAD
=======
        
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
        # Deleting model 'Profile'
        db.delete_table('user_profile')


    models = {
        'auth.group': {
            'Meta': {'object_name': 'Group'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '80'}),
            'permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'})
        },
        'auth.permission': {
            'Meta': {'ordering': "('content_type__app_label', 'content_type__model', 'codename')", 'unique_together': "(('content_type', 'codename'),)", 'object_name': 'Permission'},
            'codename': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['contenttypes.ContentType']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        'auth.user': {
            'Meta': {'object_name': 'User'},
            'date_joined': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '75', 'blank': 'True'}),
            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'groups': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Group']", 'symmetrical': 'False', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_active': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'is_staff': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_superuser': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'last_login': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'password': ('django.db.models.fields.CharField', [], {'max_length': '128'}),
            'user_permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'}),
            'username': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '30'})
        },
        'contenttypes.contenttype': {
            'Meta': {'ordering': "('name',)", 'unique_together': "(('app_label', 'model'),)", 'object_name': 'ContentType', 'db_table': "'django_content_type'"},
            'app_label': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'model': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        'user.profile': {
            'Meta': {'object_name': 'Profile', '_ormbases': ['auth.User']},
<<<<<<< HEAD
            'address': ('django.db.models.fields.CharField', [], {'default': "u'address'", 'max_length': '100'}),
            'balance': ('django.db.models.fields.IntegerField', [], {'default': '600'}),
            'birth_date': ('django.db.models.fields.DateField', [], {'default': 'datetime.datetime(2013, 5, 1, 0, 0)'}),
            'description': ('django.db.models.fields.TextField', [], {'max_length': '300', 'blank': 'True'}),
            'email_updates': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'land_line': ('django.db.models.fields.CharField', [], {'max_length': '20'}),
            'lang_code': ('django.db.models.fields.CharField', [], {'default': "''", 'max_length': '10'}),
            'mobile_tlf': ('django.db.models.fields.CharField', [], {'max_length': '20'}),
            'photo': ('django.db.models.fields.files.ImageField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
=======
            'address': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'balance': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'birth_date': ('django.db.models.fields.DateField', [], {}),
            'description': ('django.db.models.fields.TextField', [], {'max_length': '300', 'blank': 'True'}),
            'email_updates': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'land_line': ('django.db.models.fields.CharField', [], {'max_length': '20'}),
            'mobile_tlf': ('django.db.models.fields.CharField', [], {'max_length': '20'}),
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
            'user_ptr': ('django.db.models.fields.related.OneToOneField', [], {'to': "orm['auth.User']", 'unique': 'True', 'primary_key': 'True'})
        }
    }

<<<<<<< HEAD
    complete_apps = ['user']
=======
    complete_apps = ['user']
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
