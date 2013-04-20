# -*- coding: utf-8 -*-
# Django settings for timebank project.
# Copyright (C) 2009 Tim Gaggstatter <Tim.Gaggstatter AT gmx DOT net>
# Copyright (C) 2010 Eduardo Robles Elvira <edulix AT gmail DOT com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

import os
from django.utils.translation import ugettext_lazy as _

curdir = os.path.abspath(os.path.dirname(__file__))

DEBUG = True
TEMPLATE_DEBUG = DEBUG

# To remove timebank.fcgi from urls
FORCE_SCRIPT_NAME = ""

SITE_NAME="Casovna banka"

ADMINS = (
    ('admin', 'mia.erbus@gmail.com'),
)

OWNERS = MANAGERS = ADMINS

# Parse database configuration from $DATABASE_URL
import dj_database_url
DATABASES = { 'default': dj_database_url.config(default='postgres://dfcddnxxxyrlea:gwVbq8GOdBRBanwwAFunpiNtfC@ec2-54-243-241-23.compute-1.amazonaws.com:5432/d8lvag8nknevor') }

# Honor the 'X-Forwarded-Proto' header for request.is_secure()
SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')

#if bool(os.environ.get('LOCAL_DEV', False)):
#	DATABASES = {
#	    'default': {
#        	'ENGINE': 'django.db.backends.sqlite3', # Add 'postgresql_psycopg2', 'postgresql', 'mysql', 'sqlite3' or 'oracle'.
#	        'NAME': 'database.sqlite',       # Or path to database file if using sqlite3.
#	        'USER': '',                      # Not used with sqlite3.
#	        'PASSWORD': '',                  # Not used with sqlite3.
#	        'HOST': '',                      # Set to empty string for localhost. Not used with sqlite3.
#	        'PORT': '',                      # Set to empty string for default. Not used with sqlite3.
#	    }
#	}

# Local time zone for this installation. Choices can be found here:
# http://en.wikipedia.org/wiki/List_of_tz_zones_by_name
# although not all choices may be available on all operating systems.
# If running in a Windows environment this must be set to the same as your
# system time zone.
TIME_ZONE = 'Europe/Ljubljana'

# Language code for this installation. All choices can be found here:
# http://www.i18nguy.com/unicode/language-identifiers.html
LANGUAGE_CODE = 'en-US'

LANG='en_US.UTF-8'
LC_ALL='en_US.UTF-8'

SITE_ID = 1

# If you set this to False, Django will make some optimizations so as not
# to load the internationalization machinery.
USE_I18N = False

# Absolute path to the directory that holds media.
# Example: "/home/media/media.lawrence.com/"
MEDIA_ROOT = ''

# URL that handles the media served from MEDIA_ROOT. Make sure to use a
# trailing slash if there is a path component (optional in other cases).
# Examples: "http://media.lawrence.com", "http://example.com/media/"
MEDIA_URL = '/site_media/'

# URL prefix for admin media -- CSS, JavaScript and images. Make sure to use a
# trailing slash.
# Examples: "http://foo.com/media/", "/media/".
ADMIN_MEDIA_PREFIX = '/media/'

#AWS_ACCESS_KEY_ID = os.environ.get('AKIAID7YDELDBZVXCKWA')
#AWS_SECRET_ACCESS_KEY = os.environ.get('PPQs+jlQ0Z0rUJ3DzzNRn9kA6TIS6d8q30Avqkjd')
#AWS_STORAGE_BUCKET_NAME = 'bucket'

#STATICFILES_STORAGE = 'storages.backends.s3boto.S3BotoStorage'
#DEFAULT_FILE_STORAGE = 'storages.backends.s3boto.S3BotoStorage'

#STATIC_URL = 'http://' + AWS_STORAGE_BUCKET_NAME + '.s3.amazonaws.com/'
#ADMIN_MEDIA_PREFIX = STATIC_URL + 'admin/'

# Make this unique, and don't share it with anybody.
# Automatically when executing python manage.py start-project
SECRET_KEY = 'k#)-9d^v+^k37nt_j0%9+mdvlq5qj%_1@^-d&!m()w^sfvfdj&'

# List of callables that know how to import templates from various sources.
TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.load_template_source',
    'django.template.loaders.app_directories.load_template_source'
)

MIDDLEWARE_CLASSES = (
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.flatpages.middleware.FlatpageFallbackMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.middleware.locale.LocaleMiddleware'
)

TEMPLATE_CONTEXT_PROCESSORS = (
    'django.contrib.auth.context_processors.auth',
    'main.context_processor.base',
)

ROOT_URLCONF = 'urls'

TEMPLATE_DIRS = (
    # Put strings here, like "/home/html/django_templates" or
    # "C:/www/django/templates". Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
    os.path.join(curdir, 'templates'),
)

INSTALLED_APPS = (
    'django.contrib.auth',
    'django.contrib.humanize',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.sites',
    'django.contrib.admin',
    'django.contrib.flatpages',
    'serv',
    'main',
    'flashmsg',
    'news',
    'tinymce',
    'south',
    'user',
    'globaltags',
    'messages',
    'djangoratings',
    'tasks',
    'rosetta',
    'notification',
    'exts',
#    'storages',
#    'smuggler',
)

LOGIN_URL = '/'

# The URL where requests are redirected after login when the
# contrib.auth.login view gets no next parameter.
LOGIN_REDIRECT_URL = '/'

# Path for static docs (css, images, etc)
STATIC_DOC_ROOT = os.path.join(curdir, 'site_media')

STATIC_ROOT = os.path.join(curdir, 'site_media')

# URL prefix for static files.
# Example: "http://example.com/static/", "http://static.example.com/"
STATIC_URL = '/site_media/'

# Additional locations of static files
STATICFILES_DIRS = (
    # Put strings here, like "/home/html/static" or "C:/www/django/static".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
)

DATE_FORMAT = 'd/m/Y'
DATETIME_FORMAT = 'd/m/Y, H:i'
SESSION_EXPIRE_AT_BROWSER_CLOSE=True

AUTHENTICATION_BACKENDS = (
    'user.auth_backends.CustomUserModelBackend',
)
CUSTOM_USER_MODEL = 'user.Profile'

# reCAPTCHA fill in local_settings.py, not here
RECAPTCHA_PUBLIC_KEY = "6LfA7d8SAAAAAPHYLhAyft-wNE1MNaDruCjvsxVa"
RECAPTCHA_PRIVATE_KEY = "6LfA7d8SAAAAACan_ZviubXy1-knfYh8tavtVeJL"

# Email configuration. Configure appropiately if emails are not directly sent by localhost
EMAIL_SUBJECT_PREFIX = ''
DEFAULT_FROM_EMAIL = 'Časovna banka <mia.erbus@gmail.com>'
SERVER_EMAIL = 'mia.erbus@gmail.com'
EMAIL_USE_TLS = True
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_PORT = 587
EMAIL_HOST_USER = 'mia.erbus@gmail.com'
EMAIL_HOST_PASSWORD = 'rugelj12n'

## For debugging, you can use the console email backend:
#EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'

MIN_CREDIT = -10*60
MAX_CREDIT = 20*60
MAX_CREDITS_PER_TRANSFER = 10*60

LOCALE_PATHS = (
      #os.path.join(curdir, 'locale'),
)

LANGUAGES = (
      ('en', _('English')),
)

# Just in case
RATINGS_VOTES_PER_IP = 3
AUTOACCEPT_REGISTRATION=False

SHOW_CAPTCHAS=True

PUBLIC_USER_INFO = False

try:
    from local_settings import *
except ImportError:
    pass
