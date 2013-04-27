# -*- coding: utf-8 -*-
from django.db.models import get_models, signals
from django.conf import settings
from django.utils.translation import ugettext_noop as _

if "notification" in settings.INSTALLED_APPS:
    from notification import models as notification

    def create_notice_types(app, created_models, verbosity, **kwargs):
        notification.create_notice_type("messages_received", _(u"Prejeto sporočilo"), _(u"prejeli ste sporočilo"), default=2)
        notification.create_notice_type("messages_sent", _(u"Sporočilo poslano"), _(u"poslali ste sporočilo"), default=1)
        notification.create_notice_type("messages_replied", _(u"Sporočilo odgovorjeno"), _(u"odgvorili ste na sporočilo"), default=1)
        notification.create_notice_type("messages_reply_received", _(u"Odgovor sprejet"), _(u"prejeli ste odgovor na sporočilo"), default=2)
        notification.create_notice_type("messages_deleted", _(u"Sporočilo izbrisano"), _(u"izbrisali ste sporočilo"), default=1)
        notification.create_notice_type("messages_recovered", _(u"Sporočilo obnovljeno"), _(u"obnovili ste sporočilo"), default=1)

    signals.post_syncdb.connect(create_notice_types, sender=notification)
else:
    print "Skipping creation of NoticeTypes as notification app not found"
