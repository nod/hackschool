
import os.path as path

from bottle import (
        route, run, static_file, template, TEMPLATE_PATH, view, request
        )

from .util import tdict, calc_tries, set_hack_level

dsmsg = '''
Greetings AgentH.

Call me DeepSleep.  I'm an agent deep undercover.

I've hidden certain clues in the actual source code of the pages.

You are currently looking at the HTML source of the page.  You can think of the
source as a bunch of lego bricks all broken apart and you can think of the page
you were looking at as what you get when you put those bricks together.

Have a look around here, I have hidden the clue in the source of this page.
Look for DeepSleep down in the code, I know you can find it.

One more clue - once you find the username, the password is the backwards
version of that.

Good luck,
DeepSleep

ps - you will need to close this View Source window to get back to the
application page you were trying to hide.
'''

@route('/h1')
@view('h1.tpl')
def h1():
    name = request.query.name
    if name == 'evil' and request.query.passwd == 'live':
        ok=True
        set_hack_level(1)
    else:
        ok=False

    tries = calc_tries()

    hints = []
    if tries > 2:
        hints.append("hey! right click on the page and click View Page Source")

    return tdict(
            sect='hack-1',
            ok=ok,
            title='username:evil',
            tries=tries,
            hints=hints,
            dsmsg=dsmsg
            )

