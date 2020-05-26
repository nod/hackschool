
VENVLOC=./pyvenv

.DEFAULT_GOAL := virtualenv

$(VENVLOC): virtualenv

clean:
	# explicitly not removing the devdb. I have mixed feelings -jk-
	rm -rf $(VENVLOC)
	find . -type dir -name __pycache__ | xargs rm -rf
	find . -type dir -name hackschool.egg-info | xargs rm -rf

virtualenv:
	python3 -m venv $(VENVLOC)
	$(VENVLOC)/bin/pip3 install -r reqs.pip

dev: $(VENVLOC)
	$(VENVLOC)/bin/pip3 install -e .

run:
	$(VENVLOC)/bin/hackschool run -p 1337

