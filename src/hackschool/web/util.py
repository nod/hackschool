
from bottle import redirect, request, response


def set_hack_level(level):
    response.set_cookie(name='hacklevel', value=str(level))


def min_hack_level(level):
    def wrapper(f):
        def wrapped(*a, **ka):
            if ( int(request.cookies.hacklevel or 0) < level):
                return redirect('/denied')
            return f(*a, **ka)
        return wrapped
    return wrapper

def calc_tries():
    try:
        tries = int(request.query.tries) + 1 if request.query.tries else 0
    except:
        tries = 1
    return tries


def tdict(**ka):
    d = dict(
            tries = calc_tries(),
            title = ka.get('title', 'hackschool'),
            sect = ka.get('sect', ''),
            hints = ka.get('hints', ''),
            dsmsg = ka.get('dsmsg', ''),
            )
    d.update(ka)
    return d


