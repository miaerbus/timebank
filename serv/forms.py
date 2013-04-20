# -*- coding: utf-8 -*-
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


from django.core.urlresolvers import reverse
from django.utils.translation import ugettext_lazy as _
from django import forms
from django.forms.widgets import RadioSelect, CheckboxSelectMultiple
from django.shortcuts import get_object_or_404
from django.conf import settings

import urllib

from serv.models import Service, Area, Category, Transfer
from messages.models import Message
from utils import FormCharField

class CustomCharField(forms.CharField):

    def prepare_value(self, data):
        if data:
            return str(int(data))
        else:
            return '0'


class ServiceForm(forms.ModelForm):
    class Meta:
        model = Service
        exclude = ('creator', 'pub_date', 'is_active')
        widgets = {
            'is_offer': forms.Select
        }


    def __init__(self, *args, **kwargs):
        super(ServiceForm, self).__init__(*args, **kwargs)
        self.fields['area'].empty_label = _("Vse")
        self.fields['description'].help_text = _("Nasvet: ne vpisujte osebnih"
	    " podatkov, za katere ne želite, da so javno objavljeni."
	    " Za zasebne podatke uporabite zasebna sporočila.")

class ListServicesForm(forms.Form):
    TYPE_CHOICES = (
        ('0', '---------'),
        ('1', _('ponujam')),
        ('2', _('povprašujem')),
    )
    USER_CHOICES = (
        ('0', _('---------')),
        ('1', _(u'manj kot dnevom')),
        ('2', _(u'manj kot tednom')),
        ('3', _(u'manj kot mesecem')),
        ('4', _(u'manj kot tremi meseci')),
        ('5', _(u'manj kot šestimi meseci')),
        ('6', _(u'manj kot letom')),
    )

    mine = forms.BooleanField(label=_("Prikaži samo moje stroitve"), required=False)
    the_type = CustomCharField(label=_("Tip storitve"),
        widget=forms.Select(choices=TYPE_CHOICES), required=False)
    category = forms.ModelChoiceField(None, required=False, label=_("Kategorija"))
    area = forms.ModelChoiceField(None, required=False, label=_("Območje"))
    user_status = CustomCharField(label=_("Status uporabnika"),
        widget=forms.Select(choices=USER_CHOICES), required=False)
    username = forms.CharField(label=_("Uporabnik"), required=False)
    text = forms.CharField(label=_("Ime storitve"), required=False)

    def __init__(self,  *args, **kwargs):
        super(ListServicesForm, self).__init__(*args, **kwargs)
        self.fields['category'].queryset = Category.objects.all().order_by('name')
        self.fields['area'].queryset = Area.objects.all().order_by('name')

    def as_url_args(self):
        return urllib.urlencode(self.data)

class NewTransferForm(forms.ModelForm):
    CREDITS_CHOICES = (
        ('30', _('pol ure')),
        ('60', _('1 ura')),
        ('90', _('1 ura in pol')),
        ('120', _('2 uri')),
        ('150', _('2 uri in pol')),
        ('180', _('3 ure')),
        ('210', _('3 ure in pol')),
        ('240', _('4 ure')),
        ('270', _('4 ure in pol')),
        ('300', _('5 ur')),
        ('330', _('5 ur in pol')),
        ('360', _('6 ur')),
        ('390', _('6 ur in pol')),
    )
    OFFER_CHOICES = (
        ('0', _(u'ponudil')),
        ('1', _(u'povpraševal')),
    )
    username = forms.CharField(label=_("Uporabniško ime"), help_text=_(
        "Navedi uporabika, ki bo prejel ali dal kredit"), required=True)

    credits = CustomCharField(label=_("Kredit"),
        widget=forms.Select(choices=CREDITS_CHOICES), required=True)

    service_type = CustomCharField(label=_("Tip storitve"),
            help_text=_("Izberi, ali s tem prenosom prejmeš (ponudil)"
	    " ali daš kredit (povpraševal)",
            widget=forms.Select(choices=OFFER_CHOICES)))

    class Meta:
        model = Transfer
        fields = ['description', 'credits']

    def clean_credits(self):
        credits = self.cleaned_data.get("credits", "30")
        return int(credits)

    def clean_username(self):
        from user.models import Profile
        username = self.cleaned_data.get("username", "")
        try:
            self.user = get_object_or_404(Profile, username=username)
        except Exception, e:
            raise forms.ValidationError(_("Uporabnik s tem uporabniškim imenom ne obstaja."))


class AddTransferForm(forms.ModelForm):
    CREDITS_CHOICES = (
        ('30', _('pol ure')),
        ('60', _('1 ura')),
        ('90', _('1 ura in pol')),
        ('120', _('2 uri')),
        ('150', _('2 uri in pol')),
        ('180', _('3 ure')),
        ('210', _('3 ure in pol')),
        ('240', _('4 ure')),
        ('270', _('4 ure in pol')),
        ('300', _('5 ur')),
        ('330', _('5 ur in pol')),
        ('360', _('6 ur')),
        ('390', _('6 ur in pol')),
    )

    credits = CustomCharField(label=_("Kredit"),
        widget=forms.Select(choices=CREDITS_CHOICES), required=True)

    class Meta:
        model = Transfer
        fields = ['description', 'credits']

    def clean_credits(self):
        credits = self.cleaned_data.get("credits", "30")
        return int(credits)

class AddCommentForm(forms.ModelForm):
    class Meta:
        model = Message
        fields = ['body']
