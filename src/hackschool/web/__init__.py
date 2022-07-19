
import os.path as path

from bottle import (
        route, run, static_file, template, TEMPLATE_PATH, view, request
        )

from .util import tdict, set_hack_level

from .h1 import h1
from .h2 import h2
from .h3 import h3

webproj_root=path.dirname(__file__)
static_root=path.join(webproj_root, 'static')
TEMPLATE_PATH.append(path.join(webproj_root, 'templates'))


@route('/')
@view('index.tpl')
def index():
    if request.query.logout: set_hack_level(0)
    return tdict()

@route('/denied')
@view('denied.tpl')
def denied():
    return tdict()

@route('/static/<path:path>')
def callback(path):
    return static_file(path, root=static_root)

def run_hackschool(host='localhost', port=8080, **ka):
    run(host=host, port=port, debug=True)


