import click

from ..web import run_hackschool


@click.group()
def cli():
    pass


@cli.command(help="run webserver")
@click.option('-p', '--port', default=8088, help="port")
@click.option('-b', '--bind', default="localhost", help="bind host")
def run(**ka):
    run_hackschool(ka.get('bind'), ka.get('port'))

