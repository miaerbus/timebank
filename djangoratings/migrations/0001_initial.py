<<<<<<< HEAD
# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Vote'
        db.create_table('djangoratings_vote', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('content_type', self.gf('django.db.models.fields.related.ForeignKey')(related_name='votes', to=orm['contenttypes.ContentType'])),
            ('object_id', self.gf('django.db.models.fields.PositiveIntegerField')()),
            ('key', self.gf('django.db.models.fields.CharField')(max_length=32)),
            ('score', self.gf('django.db.models.fields.IntegerField')()),
            ('user', self.gf('django.db.models.fields.related.ForeignKey')(blank=True, related_name='votes', null=True, to=orm['auth.User'])),
            ('ip_address', self.gf('django.db.models.fields.IPAddressField')(max_length=15)),
            ('date_added', self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now)),
            ('date_changed', self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now)),
        ))
        db.send_create_signal('djangoratings', ['Vote'])

        # Adding unique constraint on 'Vote', fields ['content_type', 'object_id', 'key', 'user', 'ip_address']
        db.create_unique('djangoratings_vote', ['content_type_id', 'object_id', 'key', 'user_id', 'ip_address'])

        # Adding model 'Score'
        db.create_table('djangoratings_score', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('content_type', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['contenttypes.ContentType'])),
            ('object_id', self.gf('django.db.models.fields.PositiveIntegerField')()),
            ('key', self.gf('django.db.models.fields.CharField')(max_length=32)),
            ('score', self.gf('django.db.models.fields.IntegerField')()),
            ('votes', self.gf('django.db.models.fields.PositiveIntegerField')()),
        ))
        db.send_create_signal('djangoratings', ['Score'])

        # Adding unique constraint on 'Score', fields ['content_type', 'object_id', 'key']
        db.create_unique('djangoratings_score', ['content_type_id', 'object_id', 'key'])

        # Adding model 'SimilarUser'
        db.create_table('djangoratings_similaruser', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('from_user', self.gf('django.db.models.fields.related.ForeignKey')(related_name='similar_users', to=orm['auth.User'])),
            ('to_user', self.gf('django.db.models.fields.related.ForeignKey')(related_name='similar_users_from', to=orm['auth.User'])),
            ('agrees', self.gf('django.db.models.fields.PositiveIntegerField')(default=0)),
            ('disagrees', self.gf('django.db.models.fields.PositiveIntegerField')(default=0)),
            ('exclude', self.gf('django.db.models.fields.BooleanField')(default=False)),
        ))
        db.send_create_signal('djangoratings', ['SimilarUser'])

        # Adding unique constraint on 'SimilarUser', fields ['from_user', 'to_user']
        db.create_unique('djangoratings_similaruser', ['from_user_id', 'to_user_id'])

        # Adding model 'IgnoredObject'
        db.create_table('djangoratings_ignoredobject', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('user', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['auth.User'])),
            ('content_type', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['contenttypes.ContentType'])),
            ('object_id', self.gf('django.db.models.fields.PositiveIntegerField')()),
        ))
        db.send_create_signal('djangoratings', ['IgnoredObject'])

        # Adding unique constraint on 'IgnoredObject', fields ['content_type', 'object_id']
        db.create_unique('djangoratings_ignoredobject', ['content_type_id', 'object_id'])


    def backwards(self, orm):
        # Removing unique constraint on 'IgnoredObject', fields ['content_type', 'object_id']
        db.delete_unique('djangoratings_ignoredobject', ['content_type_id', 'object_id'])

        # Removing unique constraint on 'SimilarUser', fields ['from_user', 'to_user']
        db.delete_unique('djangoratings_similaruser', ['from_user_id', 'to_user_id'])

        # Removing unique constraint on 'Score', fields ['content_type', 'object_id', 'key']
        db.delete_unique('djangoratings_score', ['content_type_id', 'object_id', 'key'])

        # Removing unique constraint on 'Vote', fields ['content_type', 'object_id', 'key', 'user', 'ip_address']
        db.delete_unique('djangoratings_vote', ['content_type_id', 'object_id', 'key', 'user_id', 'ip_address'])

        # Deleting model 'Vote'
        db.delete_table('djangoratings_vote')

        # Deleting model 'Score'
        db.delete_table('djangoratings_score')

        # Deleting model 'SimilarUser'
        db.delete_table('djangoratings_similaruser')

        # Deleting model 'IgnoredObject'
        db.delete_table('djangoratings_ignoredobject')


    models = {
        'auth.group': {
            'Meta': {'object_name': 'Group'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '80'}),
            'permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'})
        },
        'auth.permission': {
            'Meta': {'ordering': "('content_type__app_label', 'content_type__model', 'codename')", 'unique_together': "(('content_type', 'codename'),)", 'object_name': 'Permission'},
=======

from south.db import db
from django.db import models
from djangoratings.models import *

class Migration:
    
    def forwards(self, orm):
        
        # Adding model 'Score'
        db.create_table('djangoratings_score', (
            ('id', orm['djangoratings.Score:id']),
            ('content_type', orm['djangoratings.Score:content_type']),
            ('object_id', orm['djangoratings.Score:object_id']),
            ('key', orm['djangoratings.Score:key']),
            ('score', orm['djangoratings.Score:score']),
            ('votes', orm['djangoratings.Score:votes']),
        ))
        db.send_create_signal('djangoratings', ['Score'])
        
        # Adding model 'Vote'
        db.create_table('djangoratings_vote', (
            ('id', orm['djangoratings.Vote:id']),
            ('content_type', orm['djangoratings.Vote:content_type']),
            ('object_id', orm['djangoratings.Vote:object_id']),
            ('key', orm['djangoratings.Vote:key']),
            ('score', orm['djangoratings.Vote:score']),
            ('user', orm['djangoratings.Vote:user']),
            ('ip_address', orm['djangoratings.Vote:ip_address']),
            ('date_added', orm['djangoratings.Vote:date_added']),
            ('date_changed', orm['djangoratings.Vote:date_changed']),
        ))
        db.send_create_signal('djangoratings', ['Vote'])
        
        # Creating unique_together for [content_type, object_id, key, user, ip_address] on Vote.
        db.create_unique('djangoratings_vote', ['content_type_id', 'object_id', 'key', 'user_id', 'ip_address'])
        
        # Creating unique_together for [content_type, object_id, key] on Score.
        db.create_unique('djangoratings_score', ['content_type_id', 'object_id', 'key'])
        
    
    
    def backwards(self, orm):
        
        # Deleting unique_together for [content_type, object_id, key] on Score.
        db.delete_unique('djangoratings_score', ['content_type_id', 'object_id', 'key'])
        
        # Deleting unique_together for [content_type, object_id, key, user, ip_address] on Vote.
        db.delete_unique('djangoratings_vote', ['content_type_id', 'object_id', 'key', 'user_id', 'ip_address'])
        
        # Deleting model 'Score'
        db.delete_table('djangoratings_score')
        
        # Deleting model 'Vote'
        db.delete_table('djangoratings_vote')
        
    
    
    models = {
        'auth.group': {
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '80'}),
            'permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'blank': 'True'})
        },
        'auth.permission': {
            'Meta': {'unique_together': "(('content_type', 'codename'),)"},
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
            'codename': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['contenttypes.ContentType']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        'auth.user': {
<<<<<<< HEAD
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
=======
            'date_joined': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '75', 'blank': 'True'}),
            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'groups': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Group']", 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_active': ('django.db.models.fields.BooleanField', [], {'default': 'True', 'blank': 'True'}),
            'is_staff': ('django.db.models.fields.BooleanField', [], {'default': 'False', 'blank': 'True'}),
            'is_superuser': ('django.db.models.fields.BooleanField', [], {'default': 'False', 'blank': 'True'}),
            'last_login': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'password': ('django.db.models.fields.CharField', [], {'max_length': '128'}),
            'user_permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'blank': 'True'}),
            'username': ('django.db.models.fields.CharField', [], {'max_length': '30', 'unique': 'True', 'null': 'True', 'blank': 'True'})
        },
        'contenttypes.contenttype': {
            'Meta': {'unique_together': "(('app_label', 'model'),)", 'db_table': "'django_content_type'"},
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
            'app_label': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'model': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
<<<<<<< HEAD
        'djangoratings.ignoredobject': {
            'Meta': {'unique_together': "(('content_type', 'object_id'),)", 'object_name': 'IgnoredObject'},
            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['contenttypes.ContentType']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'object_id': ('django.db.models.fields.PositiveIntegerField', [], {}),
            'user': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['auth.User']"})
        },
        'djangoratings.score': {
            'Meta': {'unique_together': "(('content_type', 'object_id', 'key'),)", 'object_name': 'Score'},
=======
        'djangoratings.score': {
            'Meta': {'unique_together': "(('content_type', 'object_id', 'key'),)"},
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['contenttypes.ContentType']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'key': ('django.db.models.fields.CharField', [], {'max_length': '32'}),
            'object_id': ('django.db.models.fields.PositiveIntegerField', [], {}),
            'score': ('django.db.models.fields.IntegerField', [], {}),
            'votes': ('django.db.models.fields.PositiveIntegerField', [], {})
        },
<<<<<<< HEAD
        'djangoratings.similaruser': {
            'Meta': {'unique_together': "(('from_user', 'to_user'),)", 'object_name': 'SimilarUser'},
            'agrees': ('django.db.models.fields.PositiveIntegerField', [], {'default': '0'}),
            'disagrees': ('django.db.models.fields.PositiveIntegerField', [], {'default': '0'}),
            'exclude': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'from_user': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'similar_users'", 'to': "orm['auth.User']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'to_user': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'similar_users_from'", 'to': "orm['auth.User']"})
        },
        'djangoratings.vote': {
            'Meta': {'unique_together': "(('content_type', 'object_id', 'key', 'user', 'ip_address'),)", 'object_name': 'Vote'},
=======
        'djangoratings.vote': {
            'Meta': {'unique_together': "(('content_type', 'object_id', 'key', 'user', 'ip_address'),)"},
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'votes'", 'to': "orm['contenttypes.ContentType']"}),
            'date_added': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'date_changed': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'ip_address': ('django.db.models.fields.IPAddressField', [], {'max_length': '15'}),
            'key': ('django.db.models.fields.CharField', [], {'max_length': '32'}),
            'object_id': ('django.db.models.fields.PositiveIntegerField', [], {}),
            'score': ('django.db.models.fields.IntegerField', [], {}),
            'user': ('django.db.models.fields.related.ForeignKey', [], {'blank': 'True', 'related_name': "'votes'", 'null': 'True', 'to': "orm['auth.User']"})
        }
    }
<<<<<<< HEAD

    complete_apps = ['djangoratings']
=======
    
    complete_apps = ['djangoratings']
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
