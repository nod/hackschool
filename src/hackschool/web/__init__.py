
import os.path as path

from bottle import (
        route, run, static_file, template, TEMPLATE_PATH, view, request
        )

webproj_root=path.dirname(__file__)
static_root=path.join(webproj_root, 'static')
TEMPLATE_PATH.append(path.join(webproj_root, 'templates'))


def tdict(**ka):
    d = dict(
            title = ka.get('title', 'hackschool'),
            sect = ka.get('sect', ''),
            hints = ka.get('hints', ''),
            )
    d.update(ka)
    print("TDICT", d)
    return d


@route('/')
@view('index.tpl')
def index():
    return tdict()

@route('/h3')
@view('h3.tpl')
def h3():
    return tdict()

@route('/h2')
@view('h2.tpl')
def h2():
    if (request.query.verify
            and request.query.verify == request.query.expectedvalue ):
        ok=True
    else:
        ok=False
    try:
        tries = int(request.query.tries) + 1 if request.query.tries else 0
    except:
        tries = 5
    hints = []
    if tries > 5:
        hints.append("right click on page and look at the source")
    return tdict(sect="hack-2", hints=hints, ok=ok, tries=tries)


@route('/h1')
@view('h1.tpl')
def h1():
    if request.query.name and request.query.name == request.query.passwd:
        ok=True
    else:
        ok=False
    try:
        tries = int(request.query.tries) + 1 if request.query.tries else 0
    except:
        tries = 5

    hints = []
    if tries > 3:
        hints.append("the user name is on the page somewhere")

    if tries > 10:
        hints.append("there is stuff hidden in the page itself")

    if tries > 40:
        hints.append("right click on the page and click View Source")

    return tdict(
            sect='hack-1',
            ok=ok,
            title='username:evil',
            tries=tries,
            hints=hints
            )

@route('/static/<path:path>')
def callback(path):
    return static_file(path, root=static_root)

def run_hackschool(host='localhost', port=8080, **ka):
    run(host=host, port=port, debug=True)


