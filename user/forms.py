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
<<<<<<< HEAD
from django.utils.safestring import mark_safe
=======

>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
from tinymce.widgets import TinyMCE

from models import Profile
from messages.models import Message
from utils import (FormCharField, FormEmailField, FormDateField,
    FormCaptchaField)
from  serv.forms import CustomCharField

class RegisterForm(UserCreationForm):
<<<<<<< HEAD
    username = forms.RegexField(label=_(u'Uporabniško ime'), max_length=30,
        regex=r'^[\w.@+-]+$',
        help_text=_(u'Zahtevano. Do 30 znakov. Samo alfanumerični znaki'
		' ali znaki @/./+/-/_.'),
        error_messages={
            'invalid': _(u'To polje naj vsebuje samo alfanumerične znake,'
		u' številke ali znake: @/./+/-/_.')})
    password1 = forms.CharField(label=_("Geslo"),
        widget=forms.PasswordInput)
    password2 = forms.CharField(label=_("Ponovitev gesla"),
        widget=forms.PasswordInput,
        help_text=_("Ponovite geslo, da se izognete tipkarskim napakam."))
    birth_date = FormDateField(label=_("Rojstni datum"),
        input_formats=("%d.%m.%Y",))
    first_name = FormCharField(label=_("Ime"), required=True, max_length=30)
    last_name = FormCharField(label=_("Priimek"), required=True, max_length=30)
    email = FormEmailField(label=_("E-mail"), required=True)
    address = FormCharField(label=_("Naslov"), required=True,
        max_length=100, help_text=_("Primer: Cankarjeva 1, Maribor"))
    description = FormCharField(label=_("Opis"), required=True,
        max_length=300, widget=forms.Textarea())
    land_line = FormCharField(label=_("Stacionarni telefon"), max_length=20,
        required=False, help_text="Primer: 02 123 4567")
    mobile_tlf = FormCharField(label=_("Mobilni telefon"), max_length=20,
        required=False, help_text="Primer: 041 123 456")
    terms = forms.BooleanField(
    	error_messages={'required': 'Sprejeti morate pogoje'},
    	label=u"Prebral/a sem in strinjam se s pogoji in pravili Časovne banke",
        help_text=mark_safe(u"<a href='http://cbs-mb.si/rules/'>Pravilnik Časovne banke Maribor</a><br /><a href='http://cbs-mb.si/terms/'>Pravila in pogoji Časovne banke Maribor</a>"))
=======
    birth_date = FormDateField(label=_("Birth date"),
        input_formats=("%d/%m/%Y",))

    first_name = FormCharField(label=_("Name"), required=True, max_length=30)
    last_name = FormCharField(label=_("Last name"), required=True, max_length=30)
    email = FormEmailField(label=_("Email address"), required=True)
    address = FormCharField(label=_("Address"), required=True,
        max_length=100, help_text=_("Example: Avda. Molina, 12, Sevilla"))
    description = FormCharField(label=_("Personal description"), required=True,
        max_length=300, widget=forms.Textarea())
    land_line = FormCharField(label=_("Land line"), max_length=20,
        required=False, help_text="Example: 954 123 111")
    mobile_tlf = FormCharField(label=_("Mobile Telephone"), max_length=20,
        required=False, help_text="Example: 651 333 111")
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
    captcha = FormCaptchaField()

    class Meta:
        model = Profile
        fields = ('username', 'first_name', 'last_name', 'email', 'address', 'birth_date', 'description', 'land_line', 'mobile_tlf')

<<<<<<< HEAD
class RegisterFormOrg(UserCreationForm):
    org_name = FormCharField(label=_(u"Ime organizacije"), required=True, max_length=30)
    username = forms.RegexField(label=_(u'Uporabniško ime zastopnika'), max_length=30,
        regex=r'^[\w.@+-]+$',
        help_text=_(u'Zahtevano. Do 30 znakov. Samo alfanumerični znaki'
            u' ali znaki @/./+/-/_.'),
        error_messages={
            'invalid': _(u'To polje naj vsebuje samo alfanumerične znake,'
            u' številke ali znake: @/./+/-/_.')})
    password1 = forms.CharField(label=_("Geslo"),
        widget=forms.PasswordInput)
    password2 = forms.CharField(label=_("Ponovitev gesla"),
        widget=forms.PasswordInput,
        help_text=_("Ponovite geslo, da se izognete tipkarskim napakam."))
    birth_date = FormDateField(label=_("Rojstni datum zastopnika"),
        input_formats=("%d.%m.%Y",))
    first_name = FormCharField(label=_("Ime zastopnika"), required=True, max_length=30)
    last_name = FormCharField(label=_("Priimek zastopnika"), required=True, max_length=30)
    email = FormEmailField(label=_(u"E-poštninaslov zastopnika"), required=True)
    address = FormCharField(label=_("Naslov zastopnika"), required=True,
        max_length=100, help_text=_("Primer: Cankarjeva 1, Maribor"))
    description = FormCharField(label=_("Opis organizacije"), required=True,
        max_length=300, widget=forms.Textarea())
    land_line = FormCharField(label=_("Stacionarni telefon"), max_length=20,
        required=False, help_text="Primer: 02 123 4567")
    mobile_tlf = FormCharField(label=_("Mobilni telefon"), max_length=20,
        required=False, help_text="Primer: 041 123 456")
    terms = forms.BooleanField(
    	error_messages={'required': 'Sprejeti morate pogoje'},
    	label=u"Prebral/a sem in strinjam se s pogoji in pravili Časovne banke",
        help_text=mark_safe(u"<a href='http://cbs-mb.si/rules/'>Pravilnik Časovne banke Maribor</a><br /><a href='http://cbs-mb.si/terms/'>Pravila in pogoji Časovne banke Maribor</a>"))
    captcha = FormCaptchaField()

    class Meta:
        model = Profile
        fields = ('org_name', 'username', 'first_name', 'last_name', 'email', 'address', 'birth_date', 'description', 'land_line', 'mobile_tlf')

class RegisterFormYouth(UserCreationForm):
    username = forms.RegexField(label=_(u'Uporabniško ime'), max_length=30,
        regex=r'^[\w.@+-]+$',
        help_text=_(u'Zahtevano. Do 30 znakov. Samo alfanumerični znaki'
                ' ali znaki @/./+/-/_.'),
        error_messages={
            'invalid': _(u'To polje naj vsebuje samo alfanumerične znake,'
                u' številke ali znake: @/./+/-/_.')})
    password1 = forms.CharField(label=_("Geslo"),
        widget=forms.PasswordInput)
    password2 = forms.CharField(label=_("Ponovitev gesla"),
        widget=forms.PasswordInput,
        help_text=_("Ponovite geslo, da se izognete tipkarskim napakam."))
    birth_date = FormDateField(label=_("Rojstni datum"),
        input_formats=("%d.%m.%Y",))
    first_name = FormCharField(label=_("Ime"), required=True, max_length=30)
    last_name = FormCharField(label=_("Priimek"), required=True, max_length=30)
    email = FormEmailField(label=_("E-mail"), required=True)
    first_name1 = FormCharField(label=_("Ime zastopnika"), required=True, max_length=30)
    last_name1 = FormCharField(label=_("Priimek zastopnika"), required=True, max_length=30)
    email1 = FormEmailField(label=_(u"E-poštni naslov zastopnika"), required=True)
    address = FormCharField(label=_("Naslov"), required=True,
        max_length=100, help_text=_("Primer: Cankarjeva 1, Maribor"))
    description = FormCharField(label=_("Opis"), required=True,
        max_length=300, widget=forms.Textarea())
    land_line = FormCharField(label=_("Stacionarni telefon"), max_length=20,
        required=False, help_text="Primer: 02 123 4567")
    mobile_tlf = FormCharField(label=_("Mobilni telefon"), max_length=20,
        required=False, help_text="Primer: 041 123 456")
    terms = forms.BooleanField(
    	error_messages={'required': 'Sprejeti morate pogoje'},
    	label=u"Prebral/a sem in strinjam se s pogoji in pravili Časovne banke",
        help_text=mark_safe(u"<a href='http://cbs-mb.si/rules/'>Pravilnik Časovne banke Maribor</a><br /><a href='http://cbs-mb.si/terms/'>Pravila in pogoji Časovne banke Maribor</a>"))
    captcha = FormCaptchaField()

    class Meta:
        model = Profile
        fields = ('username', 'first_name', 'last_name', 'email',
            'first_name1', 'last_name1', 'email1', 'address',
            'birth_date', 'description', 'land_line', 'mobile_tlf')

class EditProfileForm(forms.ModelForm):
    #photo = forms.ImageField(label=_("Avatar"), required=False)
    birth_date = FormDateField(label=_("Rojstni datum"),
        input_formats=("%d.%m.%Y",))

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
    mobile_tlf = FormCharField(label=_("Mobilni telefon"), max_length=20,
        required=False, help_text="Primer: 041 123 456")
=======
class EditProfileForm(forms.ModelForm):
    photo = forms.ImageField(label=_("Avatar"), required=False)
    birth_date = FormDateField(label=_("Birth date"),
        input_formats=("%d/%m/%Y",))

    first_name = FormCharField(label=_("Name"), required=True,
        max_length=30)
    last_name = FormCharField(label=_("Last name"), required=True, max_length=30)
    email = FormEmailField(label=_("Email address"), required=True)
    address = FormCharField(label=_("Address"), required=True,
        max_length=100, help_text=_("Example: Avda. Molina, 12, Sevilla"))
    description = FormCharField(label=_("Personal description"), required=True,
        max_length=300, widget=forms.Textarea())
    password1 = forms.CharField(label=_("Current password"),
        widget=forms.PasswordInput, required=True,
        help_text=_("Enter your current password to check your identity"))
    land_line = FormCharField(label=_("Land line"), max_length=20,
        required=False, help_text="Example: 954 123 111")
    mobile_tlf = FormCharField(label=_("Mobile telephone"), max_length=20,
        required=False, help_text="Example: 651 333 111")
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6

    def __init__(self, request, *args, **kwargs):
        super(EditProfileForm, self).__init__(*args, **kwargs)
        self.request = request

    def clean_password1(self):
        password1 = self.cleaned_data["password1"]
        if not self.request.user.check_password(password1):
<<<<<<< HEAD
            raise forms.ValidationError(_("Gesli se ne ujemata."))
=======
            raise forms.ValidationError(_("The two password fields didn't match."))
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
        return password1

    class Meta:
        model = Profile
        hidden = ()
<<<<<<< HEAD
        fields = ('first_name', 'last_name', 'email', 'address',  'birth_date',
            'description', 'land_line', 'mobile_tlf', 'email_updates')

class RemoveForm(forms.Form):
    reason = FormCharField(label=_("Razlog"), required=True,
        min_length=10, max_length=300, widget=forms.Textarea(),
        help_text=_(u'Kaj smo naredili narobe? Prosimo, sporočite nam, zakaj'
            u' ne želite več sodelovati v skupnosti.'))
=======
        fields = ('photo', 'first_name', 'last_name', 'email', 'address',  'birth_date',
            'description', 'land_line', 'mobile_tlf', 'email_updates')

class RemoveForm(forms.Form):
    reason = FormCharField(label=_("Reason"), required=True,
        min_length=10, max_length=300, widget=forms.Textarea(),
        help_text=_("Have we done something wrong? Please tell us why you want"
            "rmeove your user."))
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6

class PublicMessageForm(forms.ModelForm):
    class Meta:
        model = Message
        fields = ("body",)

class FindPeopleForm(forms.Form):
    USER_CHOICES = (
<<<<<<< HEAD
        ('0', _('Kadarkoli')),
        ('1', _(u'manj kot 24 urami')),
        ('2', _(u'manj kot tednom')),
        ('3', _(u'manj kot mesecem')),
        ('4', _(u'manj kot tremi meseci')),
        ('5', _(u'manj kot šestimi meseci')),
        ('6', _(u'manj kot letom')),
    )

    user_status = CustomCharField(label=_(u"Uporabnik nazadnje povezan pred"),
        widget=forms.Select(choices=USER_CHOICES), required=False)
    username = forms.CharField(label=_(u'Uporabniško ime'), required=False)
=======
        ('0', _('---------')),
        ('1', _(u'less than 24 hours ago')),
        ('2', _(u'less than one week ago')),
        ('3', _(u'less than one month ago')),
        ('4', _(u'less than 3 months ago')),
        ('5', _(u'less than 6 months ago')),
        ('6', _(u'less than one year ago')),
    )

    user_status = CustomCharField(label=_("User connected"),
        widget=forms.Select(choices=USER_CHOICES), required=False)
    username = forms.CharField(label=_("Username"), required=False)
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6

    def as_url_args(self):
        import urllib
        return urllib.urlencode(self.data)

class FindPeople4AdminsForm(FindPeopleForm):
    USER_CHOICES = FindPeopleForm.USER_CHOICES + (
<<<<<<< HEAD
        ('7', _(u'več kot tednom')),
        ('8', _(u'več kot mesecem')),
        ('9', _(u'več kot tremi meseci')),
        ('10', _(u'več kot šestimi meseci')),
        ('11', _(u'več kot letom')),
    )
    user_status = CustomCharField(label=_(u"Uporabnik nazadnje povezan pred"),
        widget=forms.Select(choices=USER_CHOICES), required=False)
    without_services = forms.BooleanField(label=_("Nima storitev"), required=False)

class SendEmailToAllForm(forms.Form):
    subject = forms.CharField(label=_(u'Zadeva'), required=True)
    message = forms.CharField(label=_(u'Sporočilo'), required=True,
=======
        ('7', _(u'more than a week ago')),
        ('8', _(u'more than one month ago')),
        ('9', _(u'more than 3 months ago')),
        ('10', _(u'more than 6 months ago')),
        ('11', _(u'more than one year')),
    )
    user_status = CustomCharField(label=_("User connected"),
        widget=forms.Select(choices=USER_CHOICES), required=False)
    without_services = forms.BooleanField(label=_("Without services"), required=False)

class SendEmailToAllForm(forms.Form):
    subject = forms.CharField(label=_(u'Subject'), required=True)
    message = forms.CharField(label=_(u'Message body'), required=True,
>>>>>>> 2db144ba2c6c34a8f17f795a1186a524059b1aa6
        widget=forms.Textarea)
