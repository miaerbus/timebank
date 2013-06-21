# -*- coding: utf-8 -*-
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

from django.contrib.auth.models import User, UserManager
from django.utils.translation import ugettext_lazy as _
from django.db import models
from django.db.models import signals, Avg, Q
from datetime import date
import os
from django.conf import settings

def create_profile_for_user(sender, **kwargs):
    '''
    This way everytime a User is created, a Profile is created too.
    '''
    if kwargs['created']:
        profile = Profile()
        if not kwargs['instance'].__dict__.has_key("birth_date"):
            profile.birth_date = date.today()
        if not kwargs['instance'].__dict__.has_key("address"):
            profile.address = _("address")
        profile.__dict__.update(kwargs['instance'].__dict__)
        profile.save()

#signals.post_save.connect(create_profile_for_user, sender=User)

class Profile(User):
    '''
<<<<<<< HEAD
    User with timebank settings.
=======
    User with time bank settings.
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
    '''

    photo = models.ImageField(_("Avatar"), blank=True, null=True,
                              upload_to=os.path.join(settings.STATIC_DOC_ROOT, "photos"))
<<<<<<< HEAD
    birth_date = models.DateField(_("Rojstni datum"), default=date.today())

    address = models.CharField(_("Naslov"), max_length=100, default=_("address"))

    org_name = models.CharField(_("Ime organizacije"), max_length=30, default=_("org_name"))

    first_name1 = models.CharField(_("Ime zastopnika"), max_length=30, default=_("first_name"))

    last_name1 = models.CharField(_("Priimek zastopnika"), max_length=30, default=_("last_name"))

    email1 = models.CharField(_("E-mail zastopnika"), max_length=30, default=_("email"))

    # credits in minutes
    balance = models.IntegerField(default=600)
=======
    birth_date = models.DateField(_("Birth date"), default=date.today())

    address = models.CharField(_("Address"), max_length=100, default=_("address"))

    # credits in minutes
    balance = models.IntegerField(default=0)
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6

    def balance_hours(self):
        if self.balance % 60 == 0:
            return self.balance/60

        return self.balance/60.0

<<<<<<< HEAD
    description = models.TextField(_("Opis"), max_length=300,
        blank=True)

    land_line = models.CharField(_("Stacionarni telefon"), max_length=20)

    mobile_tlf = models.CharField(_("Mobilni telefon"), max_length=20)

    email_updates = models.BooleanField(_(u"Želim prejemati novice Časovne banke"),
=======
    description = models.TextField(_("Personal address"), max_length=300,
        blank=True)

    land_line = models.CharField(_("Land line"), max_length=20)

    mobile_tlf = models.CharField(_("Mobile phone"), max_length=20)

    email_updates = models.BooleanField(_("Receive email updates"),
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
        default=True)

    # Saving the user language allows sending emails to him in his desired
    # language (among other things)
<<<<<<< HEAD
    lang_code = models.CharField(_("Jezik"), max_length=10, default='')

    class Meta:
        verbose_name = _("user")
        verbose_name_plural = _("users")
=======
    lang_code = models.CharField(_("Language Code"), max_length=10, default='')

    class Meta:
        verbose_name = _("User")
        verbose_name_plural = _("Users")
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6

    def __unicode__(self):
        return self.username

    # Use UserManager to get the create_user method, etc.
    objects = UserManager()

    def __eq__(self, value):
        return value and self.id == value.id or False

    def transfers_pending(self):
        '''
        Transfers from this user which are not in a final state
        '''
        from serv.models import Transfer
        return Transfer.objects.filter(Q(credits_payee=self) \
            | Q(credits_payee=self)).filter(status__in=['r', 'd'])

    def karma(self):
        '''
        Average of the user's transfer scores
        '''
        karma = self.transfers_received.aggregate(Avg('rating_score'))
        if karma['rating_score__avg']:
            return int(karma['rating_score__avg'])
        else:
            return 0
