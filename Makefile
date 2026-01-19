# Detect OS and set venv paths
ifeq ($(OS),Windows_NT)
	PYTHON := .venv/Scripts/python.exe
	PIP := .venv/Scripts/pip.exe
else
	PYTHON := .venv/bin/python
	PIP := .venv/bin/pip
endif

ENV_FILE := .env
ENV_TEMPLATE := .env.template


.PHONY: all env venv install clean

all: env venv install
	@echo "Environment is ready to be activated."
	@echo "Check $(ENV_FILE) to set necessary environment variables."

env:
	@if [ ! -f "$(ENV_FILE)" ]; then \
		echo "Creating $(ENV_FILE) from template..."; \
		cp $(ENV_TEMPLATE) $(ENV_FILE); \
	else \
		echo "$(ENV_FILE) already exists."; \
	fi

venv:
	@echo "Ensuring virtual environment exists..."
	@if [ ! -d ".venv" ]; then \
		python3 -m venv .venv || python -m venv .venv; \
	fi

install: venv
	@echo "Installing dependencies..."
	$(PYTHON) -m pip install --upgrade pip
	$(PIP) install -r requirements.txt

test: install
	@echo "Running tests..."
	$(PYTHON) -m pytest tests/

clean:
	@echo "Removing virtual environment..."
	rm -rf .venv
