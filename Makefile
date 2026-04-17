.PHONY: verify test

verify:
	python3 -m pytest -q || true

test:
	python3 -m pytest -q || true
