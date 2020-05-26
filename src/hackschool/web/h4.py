
import os.path as path

from bottle import (
        route, run, static_file, template, TEMPLATE_PATH, view, request
        )

from .util import tdict, calc_tries, set_hack_level, min_hack_level

dsmsg = '''
AgentH! Things are getting dangerous.

You're doing great. It is getting more difficult for me to leave clues, so we're
going to have to get more creative.

I did manage to smuggle out the override code.  The code is 3141 but the form has
been obfuscated to make it more difficult to actually transmit the proper value.

Take a look at the form variables in the source again and see if you notice
anything that's a little odd.
'''


@route('/h4')
@min_hack_level(3)
@view('h4.tpl')
def h4():
    hints = []
    tries = calc_tries()
    s1 = request.query.s1
    s2 = request.query.s2
    s3 = request.query.s3
    s4 = request.query.s4
    ok = '3141' == ''.join((s1,s2,s3,s4))

    if tries > 2:
        hints.append("have you looked for a DeepSleep message?")

    if tries > 10:
        hints.append("the form variables are not what they seem")

    if tries > 99:
        hints.append("the form variables are not what they seem")

    print("ok", ok)

    return tdict(dsmsg=dsmsg, ok=ok, sect="hack-3")
