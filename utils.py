# -*- coding: utf-8 -*-
# Copyright (C) 2010 Daniel García Moreno <dani AT danigm DOT net>
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

from django.http import HttpResponse as response
from django.http import HttpResponseNotAllowed
from django.shortcuts import render_to_response
from django.template import RequestContext
from django.utils.translation import gettext as _
from django import forms
from datetime import datetime
from django.utils import formats

from flashmsg import flash

class ViewClass:
    '''
    Used to create views with classes with GET and POST methods instead of
    using functions.
    '''
    def __call__(self, request, *args, **kwargs):
        self.request = request
        self.methods = [method for method in dir(self)\
            if callable(getattr(self, method))]

        if request.method in self.methods:
            view = getattr(self, request.method)
            return view(*args, **kwargs)
        else:
            return HttpResponseNotAllowed(self.methods)

    def context_response(self, *args, **kwargs):
        kwargs['context_instance'] = RequestContext(self.request)
        return render_to_response(*args, **kwargs)

    def flash(self, msg, msg_class='info'):
        '''
        Add msg to session flash stack
        '''

        stack = self.request.session.get('flash', None)
        if not stack:
            stack = flash.Stack()
        msg = flash.Msg(msg, msg_class)
        stack.insert(0, msg)
        self.request.session['flash'] = stack


class FormCharField(forms.CharField):
    '''
    Like forms.CharField with automatic help_text which shows the restrictions
    imposed in the field.
    '''
    def __init__(self, *args, **kwargs):
        super(FormCharField, self).__init__(*args, **kwargs)
        self.update_auto_help_text()

    def get_help_text(self):
        return unicode(self._auto_help_text) + unicode(self._help_text)
        
    def set_help_text(self, help_text):
        self._help_text = help_text

    def update_auto_help_text(self):
        self._auto_help_text = u''
        if self.required:
            self._auto_help_text += _(u"Requerido. ")
        if self.max_length and self.min_length:
            self._auto_help_text += _(u"De %d a %d caracteres. ")\
                % (self.min_length, self.max_length)
        elif self.max_length:
            self._auto_help_text += _(u"Hasta %d caracteres. ")\
                % self.max_length
        elif self.min_length:
            self._auto_help_text += _(u"Mínimo de %d caracteres. ")\
                % self.min_length

    help_text = property(get_help_text, set_help_text)

class FormEmailField(forms.EmailField):
    '''
    Like forms.EmailField with automatic help_text which shows the restrictions
    imposed in the field.
    '''
    def __init__(self, *args, **kwargs):
        super(FormEmailField, self).__init__(*args, **kwargs)
        self.update_auto_help_text()

    def get_help_text(self):
        return unicode(self._auto_help_text) + unicode(self._help_text)
        
    def set_help_text(self, help_text):
        self._help_text = help_text

    def update_auto_help_text(self):
        self._auto_help_text = u''
        if self.required:
            self._auto_help_text += _(u"Requerido. ")
        self._auto_help_text += _(u" Ejemplo: nombre@ejemplo.com")

    help_text = property(get_help_text, set_help_text)


class FormDateField(forms.DateField):
    '''
    Like forms.DateField with automatic help_text which shows the restrictions
    imposed in the field.
    '''
    def __init__(self, *args, **kwargs):
        super(FormDateField, self).__init__(*args, **kwargs)
        self.update_auto_help_text()

    def get_help_text(self):
        return unicode(self._auto_help_text) + unicode(self._help_text)
        
    def set_help_text(self, help_text):
        self._help_text = help_text

    def update_auto_help_text(self):
        self._auto_help_text = u''
        if self.required:
            self._auto_help_text += _(u"Requerido. Ejemplo(s): ")

        date = datetime(1986, 9, 17).date()

        self._auto_help_text +=  ', '.join([date.strftime(format) for format in self.input_formats or formats.get_format('DATE_INPUT_FORMATS')])

    help_text = property(get_help_text, set_help_text)
