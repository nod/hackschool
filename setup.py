from setuptools import setup, find_packages
# To use a consistent encoding
from codecs import open
from os import path

here = path.abspath(path.dirname(__file__))

# Get the long description from the README file
long_description = """util rest api for sending email"""

setup(
    name = 'hackschool',
    version = '0.0.1',
    description = 'hacky hacky',
    long_description = long_description,
    url = 'https://github.com/nod/hackschool',
    author_email = 'jeremy@33ad.org',
    license = 'proprietary',
    classifiers = [ 'Development Status :: 3 - Alpha' ],
    entry_points = { 'console_scripts': [ 'hackschool=hackschool.cli.main:cli'] },
    packages=["hackschool"],
    package_dir={'': 'src'},
    package_data={}
    )

