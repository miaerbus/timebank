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

from django import forms
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from django.utils.translation import ugettext_lazy as _

from tinymce.widgets import TinyMCE

from models import Profile
from messages.models import Message
from utils import (FormCharField, FormEmailField, FormDateField,
    FormCaptchaField)
from  serv.forms import CustomCharField

class RegisterForm(UserCreationForm):
    birth_date = FormDateField(label=_("Rojstni datum"),
        input_formats=("%d/%m/%Y",))

    first_name = FormCharField(label=_("Ime"), required=True, max_length=30)
    last_name = FormCharField(label=_("Priimek"), required=True, max_length=30)
    email = FormEmailField(label=_("E-mail"), required=True)
    address = FormCharField(label=_("Naslov"), required=True,
        max_length=100, help_text=_("Primer: Cankarjeva 1, Maribor"))
    description = FormCharField(label=_("Opis"), required=True,
        max_length=300, widget=forms.Textarea())
    land_line = FormCharField(label=_("Stacionarni telefon"), max_length=20,
        required=False, help_text="Primer: 02 123 4567")
    mobile_tlf = FormCharField(label=_("Mobilni telefone"), max_length=20,
        required=False, help_text="Primer: 041 123 456")
    captcha = FormCaptchaField()

    class Meta:
        model = Profile
        fields = ('username', 'first_name', 'last_name', 'email', 'address', 'birth_date', 'description', 'land_line', 'mobile_tlf')

class EditProfileForm(forms.ModelForm):
    photo = forms.ImageField(label=_("Avatar"), required=False)
    birth_date = FormDateField(label=_("Rojstni datum"),
        input_formats=("%d/%m/%Y",))

    first_name = FormCharField(label=_("Ime"), required=True,
        max_length=30)
    last_name = FormCharField(label=_("Priimek"), required=True, max_length=30)
    email = FormEmailField(label=_("E-mail"), required=True)
    address = FormCharField(label=_("Naslov"), required=True,
        max_length=100, help_text=_("Primer: Cankarjeva 1, Maribor"))
    description = FormCharField(label=_("Opis"), required=True,
        max_length=300, widget=forms.Textarea())
    password1 = forms.CharField(label=_("Trenutno geslo"),
        widget=forms.PasswordInput, required=True,
        help_text=_("Vnesite trenutno geslo"))
    land_line = FormCharField(label=_("Stacionarni telefon"), max_length=20,
        required=False, help_text="Primer: 02 123 4567")
    mobile_tlf = FormCharField(label=_("Mobilni telefone"), max_length=20,
        required=False, help_text="Primer: 041 123 456")

    def __init__(self, request, *args, **kwargs):
        super(EditProfileForm, self).__init__(*args, **kwargs)
        self.request = request

    def clean_password1(self):
        password1 = self.cleaned_data["password1"]
        if not self.request.user.check_password(password1):
            raise forms.ValidationError(_("Gesli se ne ujemata."))
        return password1

    class Meta:
        model = Profile
        hidden = ()
        fields = ('photo', 'first_name', 'last_name', 'email', 'address',  'birth_date',
            'description', 'land_line', 'mobile_tlf', 'email_updates')

class RemoveForm(forms.Form):
    reason = FormCharField(label=_("Razlog"), required=True,
        min_length=10, max_length=300, widget=forms.Textarea(),
        help_text=_("Smo naredili kaj narobe? Prosimo, sporočite nam, zakaj ne želite več "
            "sodelovati v skupnosti."))

class PublicMessageForm(forms.ModelForm):
    class Meta:
        model = Message
        fields = ("body",)

class FindPeopleForm(forms.Form):
    USER_CHOICES = (
        ('0', _('---------')),
        ('1', _(u'manj kot 24 urami')),
        ('2', _(u'manj kot tednom')),
        ('3', _(u'manj kot mesecem')),
        ('4', _(u'manj kot tremi meseci')),
        ('5', _(u'manj kot šestimi meseci')),
        ('6', _(u'manj kot letom')),
    )

    user_status = CustomCharField(label=_("Uporabnik povezan"),
        widget=forms.Select(choices=USER_CHOICES), required=False)
    username = forms.CharField(label=_("Uporabniško ime"), required=False)

    def as_url_args(self):
        import urllib
        return urllib.urlencode(self.data)

class FindPeople4AdminsForm(FindPeopleForm):
    USER_CHOICES = FindPeopleForm.USER_CHOICES + (
        ('7', _(u'več kot tednom')),
        ('8', _(u'več kot mesecem')),
        ('9', _(u'več kot tremi meseci')),
        ('10', _(u'več kot šestimi meseci')),
        ('11', _(u'več kot letom')),
    )
    user_status = CustomCharField(label=_("Uporabnik povezan"),
        widget=forms.Select(choices=USER_CHOICES), required=False)
    without_services = forms.BooleanField(label=_("Ni storitev"), required=False)

class SendEmailToAllForm(forms.Form):
    subject = forms.CharField(label=_(u'Zadeva'), required=True)
    message = forms.CharField(label=_(u'Sporočilo'), required=True,
        widget=forms.Textarea)
