PYTHON := .venv/bin/python

.PHONY: venv install

venv:
	@command -v python3 >/dev/null 2>&1 || \
		(echo "python3 not found" && exit 1)
	python3 -m venv .venv


install: venv
	$(PYTHON) -m pip install -r requirements.txt
