import datetime
import operator
import os
import re
import sys
import traceback
from threading import Thread, Timer
from subprocess import *
import time

import wmiirc
from wmiirc import *

def terminal():
    title = datetime.datetime.now().strftime('%I%M%S')
    p1 = Popen(['screen', '-ls'], stdout=PIPE)
    p2 = Popen(['grep', 'ubuntu-session'], stdin=p1.stdout, stdout=PIPE)
    output = p2.communicate()[0]
    if output:
        screen_running = True
    else:
        screen_running = False
    if screen_running:
        os.system('screen -x ubuntu-session -X screen -t %s' % title)
        os.system('screen -x ubuntu-session -X other')
        os.system('x-terminal-emulator -e "screen -x ubuntu-session -p %s" &' % title)
    else:
        os.system('x-terminal-emulator -e "screen -S ubuntu-session -t %s" &' % title)

background = '#333333'
floatbackground='#222222'


wmii['font'] = 'drift,-*-fixed-medium-r-*-*-12-*-*-*-*-*-*-*'

# Colors tuples: "<text> <background> <border>"
wmii['focuscolors'] = '#ffffff', '#555555', '#777777'
wmii['normcolors'] = '#bbbbbb', '#222222', '#000000'
wmii['border'] = 1

keys.bind('main', (
    "Tag actions",
    ('%(mod)s-slash',       "Change to another tag",
        lambda k: tags.select(tag_menu())),
    ('%(mod)s-Shift-slash', "Retag the selected client",
        lambda k: setattr(Client('sel'), 'tags', tag_menu())),

    ('%(mod)s-Return', "Launch a terminal",
        lambda k: terminal()),
    ('%(mod)s-space',      "Open program menu",
        lambda k: program_menu()),
    ('%(mod)s-p', "Move to the view to the right",
        lambda k: tags.select(tags.next(True))),
    ('%(mod)s-Shift-p', "Move to the view to the right, take along current client",
        lambda k: tags.select(tags.next(True), take_client=Client('sel'))),
    ('%(mod)s-b',     "Toggle between floating and managed layers",
        lambda k: Tag('sel').select('toggle')),
    ('%(mod)s-Shift-b',     "Toggle selected client between floating and managed layers",
        lambda k: Tag('sel').send(Client('sel'), 'toggle')),
))

@defmonitor
def time(self):
    return wmii.cache['focuscolors'], datetime.datetime.now().strftime('%a %b %d %I:%M:%S %Y')
