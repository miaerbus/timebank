<<<<<<< HEAD
# -*- coding: utf-8 -*-
=======
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
import datetime
from django import forms
from django.conf import settings
from django.utils.translation import ugettext_lazy as _
from django.utils.translation import ugettext_noop
from django.contrib.auth.models import User

if "notification" in settings.INSTALLED_APPS:
    from notification import models as notification
else:
    notification = None

from messages.models import Message
from messages.fields import CommaSeparatedUserField

class ComposeForm(forms.Form):
    """
    A simple default form for private messages.
    """
<<<<<<< HEAD
    recipient = CommaSeparatedUserField(label=_(u"Prejemnik"),
	help_text=_(u'Če želite sporočilo poslati večim uporabnikom, uporabnike ločite z vejico'))
    subject = forms.CharField(label=_(u"Zadeva"))
    body = forms.CharField(label=_(u"Sporočilo"),
=======
    recipient = CommaSeparatedUserField(label=_(u"Recipient"))
    body = forms.CharField(label=_(u"Message"),
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
        widget=forms.Textarea(attrs={'rows': '12', 'cols':'55'}))
    
    def __init__(self, *args, **kwargs):
        recipient_filter = kwargs.pop('recipient_filter', None)
        super(ComposeForm, self).__init__(*args, **kwargs)
        if recipient_filter is not None:
            self.fields['recipient']._recipient_filter = recipient_filter
    
                
    def save(self, sender, parent_msg=None):
        recipients = self.cleaned_data['recipient']
<<<<<<< HEAD
        subject = self.cleaned_data['subject']
=======
        subject = ""
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
        body = self.cleaned_data['body']
        message_list = []
        for r in recipients:
            msg = Message(
                sender = sender,
                recipient = r,
                subject = subject,
                body = body,
            )
            if parent_msg is not None:
                msg.parent_msg = parent_msg
                parent_msg.replied_at = datetime.datetime.now()
                parent_msg.save()
            msg.save()
            message_list.append(msg)
            if notification:
                if parent_msg is not None:
                    notification.send([sender], "messages_replied", {'message': msg,})
                    notification.send([r], "messages_reply_received", {'message': msg,})
                else:
                    notification.send([sender], "messages_sent", {'message': msg,})
                    notification.send([r], "messages_received", {'message': msg,})
        return message_list
