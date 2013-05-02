# -*- coding: utf-8 -*-
from django.utils.text import wrap
from django.utils.translation import ugettext_lazy as _
from django.contrib.sites.models import Site
from django.template import Context, loader
from django.template.loader import render_to_string
from django.conf import settings

#from timebank.utils import send_mail, I18nString

def format_quote(text):
    """
    Wraps text at 55 chars and prepends each
    line with `> `.
    Used for quoting messages in replies.
    """
    lines = wrap(text, 55).split('\n')
    for i, line in enumerate(lines):
        lines[i] = "> %s" % line
    return '\n'.join(lines)

def new_message_email(sender, instance, signal,
        subject_prefix=_(u'Novo sporočilo: %(subject)s'),
        template_name="messages/new_message.html",
        default_protocol=None,
        *args, **kwargs):
    """
    This function sends an email and is called via Django's signal framework.
    Optional arguments:
        ``template_name``: the template to use
        ``subject_prefix``: prefix for the email subject.
        ``default_protocol``: default protocol in site URL passed to template
    """
    if default_protocol is None:
        default_protocol = getattr(settings, 'DEFAULT_HTTP_PROTOCOL', 'http')

    if 'created' in kwargs and kwargs['created']:
        try:
            current_domain = Site.objects.get_current().domain
            subject = I18nString(subject_prefix, {'subject': instance.subject})
            message = I18nString(template_name, {
                'site_url': '%s://%s' % (default_protocol, current_domain),
                'message': instance,
            }, True)
            if instance.recipient.email != "":
                send_mail(subject, message, settings.DEFAULT_FROM_EMAIL,
                    [instance,], fail_silently=True)
        except Exception, e:
            print e
            pass #fail silently

def new_transfer_email(sender, instance, signal, *args, **kwargs):

    if 'created' not in kwargs or not kwargs['created']:
        update_transfer_email(sender, instance, signal, *args, **kwargs)
        return

    current_domain = Site.objects.get_current().domain
    default_protocol = getattr(settings, 'DEFAULT_HTTP_PROTOCOL', 'http')

    recipient = instance.recipient()
    if instance.service:
        subject=I18nString(_(u'Nov zahtevek za prenos uporabnika %s'),
            instance.creator().username)
    else:
        subject=I18nString(_(u'Nov prenos uporabnika %s'),
            instance.creator().username)
    message = I18nString("serv/new_transfer_email.html", {
            'site_url': '%s://%s' % (default_protocol, current_domain),
            'transfer': instance
        }, True)
    send_mail(subject, message, settings.DEFAULT_FROM_EMAIL,
        [recipient,], fail_silently=True)


def update_transfer_email(sender, instance, signal, *args, **kwargs):
    current_domain = Site.objects.get_current().domain
    default_protocol = getattr(settings, 'DEFAULT_HTTP_PROTOCOL', 'http')

    if instance.status == 'q':
        recipients = [instance.creator(),]
        subject=I18nString(_('Transfer from %s edited'),
            instance.creator().username)
        template = "serv/edit_transfer_email.html"
    elif instance.status == 'a':
        recipients = [instance.creator(),]
        if instance.service:
            subject=I18nString(_('Uporabnik %s je prenos potrdil/a'),
                instance.service.creator.username)
        else:
            subject=I18nString(_(u'Uporabnik %s je prenos sprejel'),
                instance.creator().username)
        template = "serv/accept_transfer_email.html"
    elif instance.status == 'r':
        if not instance.is_direct():
            subject=I18nString(_('Transfer to %(user1)s from a service of %(user2)s'
                ' cancelled'), {
                        'user1': instance.creator().username,
                        'user2': instance.service.creator.username
                    })
        else:
            subject=I18nString(_(u'Prenos z uporabnikom %s je bil preklican'),
                instance.creator().username)
        template = "serv/cancel_transfer_email.html"
        recipients = [instance.credits_debtor, instance.credits_payee]
    elif instance.status == 'd':
        subject=I18nString(_(u'Prenos storitve, ki ste jo izvedli za uporabnika %s, je bil potrjen'),
                #instance.credits_debtor.email
		instance.credits_debtor.username)
        template = "serv/done_transfer_email.html"
        recipients = [instance.credits_payee,]
    else:
        print "error, invalid updated transfer status " + instance.service.status
        return

    message = I18nString(template, {
        'site_url': '%s://%s' % (default_protocol, current_domain),
        'transfer': instance
    }, True)
    send_mail(subject, message, settings.DEFAULT_FROM_EMAIL, recipients,
        fail_silently=True)

def send_mail(subject, message, from_email, recipient_list,
              fail_silently=False, auth_user=None, auth_password=None,
              connection=None):
    '''
    Sends an email to the given recipients' user list in their language. Use
    ugettext_lazy if you want the email to be correctly translated.
    '''
    from django.utils import translation
    from django.core.mail import send_mail as django_send_mail

    cur_language = translation.get_language()
    default_language = settings.LANGUAGE_CODE
    try:
        for recipient in recipient_list:
            print "language code: ", recipient.lang_code, default_language
            if recipient.lang_code:
                translation.activate(recipient.lang_code)
            else:
                translation.activate(default_language)

            django_send_mail(unicode(subject), unicode(message), from_email,
                [recipient.email,], fail_silently, auth_user, auth_password, connection)
    finally:
        translation.activate(cur_language)

class I18nString(object):
    '''
    This string is similar to ugettext_lazy because it doesn't render the string
    until needed, but improving this laziness, delaying this even when giving
    arguments and using a template_rendering.
    '''

    def __init__(self, message, args, render=False):
        '''
        Constructs a I18nString, either having a message to translate in
        english, or if render=True then message (first paramenter) is the
        path to the template to render.
        '''
        self.message = message
        self.args = args
        self.render = render

    def to_unicode(self, language_code=None):
        from django.utils import translation
        cur_language = translation.get_language()
        renderized_string = None
        try:
            if language_code:
                translation.activate(language_code)
            if self.render:
                renderized_string = render_to_string(self.message, self.args)
            else:
                renderized_string = self.message % self.args
        finally:
            if language_code:
                translation.activate(settings.LANGUAGE_CODE)
        return renderized_string

    def __unicode__(self):
        return self.to_unicode()
