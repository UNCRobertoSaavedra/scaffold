install:
	pip install -- upgrade pip && \
		pip install -r requirements.txt

format:
	block *.py

lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello test_hello.py

all: install format lint test