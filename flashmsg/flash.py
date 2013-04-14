# -*- coding: utf-8 -*-
# Copyright (C) 2010 Daniel Garcia Moreno <dani@danigm.net>
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


class Msg:

    def __init__(self, msg, msg_class, title):
        self.msg = msg
        self.title = title
        self.klass = msg_class

    def render(self):
        if self.title:
            return u'<li class="%s"><h3>%s</h3><p>%s</p></li>' % (self.klass,
                self.title, self.msg)
        else:
            return u'<li class="%s">%s</li>' % (self.klass, self.msg)

class Stack(list):

    def render(self):
        ret = u'<ul>'
        while self:
            ret += self.pop().render()
        ret += u'</ul>'
        return ret
