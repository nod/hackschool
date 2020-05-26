
import os.path as path

from bottle import (
        route, run, static_file, template, TEMPLATE_PATH, view, request
        )

from .util import tdict, calc_tries, set_hack_level, min_hack_level

@route('/h2')
@min_hack_level(1)
@view('h2.tpl')
def h2():
    dsmsg= '''
Hello Again AgentH,

Glad to see you're already looking for clues early on.

This one is a bit trickier.  The clues are there, just not as obvious.

First, look at the top of the browser window.  There's an address bar.  Does
anything stick out?  Now try guessing some codes and then checking the input
again.

Second, an html form is the part of the document that can collect input.

It looks something like:

<form>
STUFF
</form>

Look at the html variables defined below and see if anything there sticks out
after looking at the address bar changes.

Stay Vigilant.  You've got this.
DeepSleep
    '''
    if (request.query.verify
            and request.query.verify == request.query.expectedvalue ):
        ok=True
        set_hack_level(2)
    else:
        ok=False
    try:
        tries = int(request.query.tries) + 1 if request.query.tries else 0
    except:
        tries = 5
    hints = []
    if tries > 5:
        hints.append("right click on page and look at the source")
    if tries > 99:
        hints.append("look at the html form variable: expectedvalue")
    return tdict(dsmsg=dsmsg,sect="hack-2", hints=hints, ok=ok, tries=tries)

