### Introduction

Time Bank is a web service for managing a time bank, in which users offer their
time doing service in exchange for services provided by others users for the
same amount of time.

You can see a  demo of timebank here: http://timebank.wadobo.com
The project page is http://wadobo.com/trac/timebank/

### Dependencies

* Python 2.x >= 2.5
* python-virtualenv
* Has only been tested in Linux so far

Other dependencies can be installed with virtualenv.


### First installation

Here we will detail the most simple way to get the application running. For a
more detailed explanation about how to deploy a django, refer to:
http://docs.djangoproject.com/en/1.2/topics/install/

First thing we need is installing the dependencies in virtualenv:

    $ ./setup_env.sh

$ Now everytime we want to use the installed virtualenv, we can do the
following within the directory containing the env/ subdirectory:

    $ source env/bin/activate

After that, we need to configure the database (we use sqlite by default):

    $ ./manage.py syncdb --noinput

Then create the admin user in the database:

    $ ./manage.py loaddata admin-user.json

That's it! Start the webserver with:

    $ ./manage.py runserver

Now you'll be able to enter to your own timebank in http://localhost:8000

Of course this is a very simple and local installation. We recomend using a
web server like cherokee, lighthttpd or apache configure to use fast-cgi and
django, and a more powerful database like postgresql. Django documentation
explains how to do that:
http://docs.djangoproject.com/en/1.2/topics/install/

### Send email updates

If you want users to receive email reminders about unread messages or pending
transfers, you should add a cron task that visits every day the following url:
http://<yourserver>/tasks/send_email_updates/ .

This can be done adding a timebank.sh script to /etc/cron.daily/ with execution
permissions as the following:

    #!/bin/bash
    wget http://<tuservidor>/tasks/send_email_updates/ -O /dev/null

### Translations

Timebank has internationalization support and is translated to multiple
languages. In order to make these translations available in your installation,
you need to compile the translation (.po) files:

    $ ./manage.py compilemessages

### Settings configuration

The settings.py file contains the default configuration for the project. You
shouldn't modify it; any settings configuration you need should be added to the
local_settings.py file.

Most of the variables in settings are self-explanatory and are documented in
django: http://docs.djangoproject.com/en/1.2/ref/settings/ Notably some new
setting var that we have added is OWNERS, which contains a list of emails
addresses similar to MANAGERS and ADMINS. Emails about non-error events 
happening in your timebank will be sent to OWNERS: a new user has been 
registered and is awaiting approval, for example.

This is useful to separate those who maintain the server and do application
development, the tech people (MANAGERS, ADMINS) and those in charge of the
time bank doing administration tasks at the user-level (OWNERS).

There are some more settings non standard in django in the settings.py file,
quite self explanatory, but you can ask us if you need help with them. See
Contact seccion for that.

### Contribute

We would be happy to consider any additions or bugfixes that you would like to
add to the project. Please send them to us.

If you find a bug or would like to request a feature you may do so at
the issue tracker for this project:

http://wadobo.com/trac/timebank/newticket

Note that you don't need to be a developer to be able to contribute to timebank:
You can also help us adding or maintaining translations, testing the releases
or improving the wiki. Don't hesitate to contact with us if you want to help,
your collaboration will be much appreciated.


### Contact

Should you have any doubt or problem please contact us sending an email to
timebank-users@wadobo.com which is the development mailing list of the project.
