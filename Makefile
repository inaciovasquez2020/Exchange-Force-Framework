.PHONY: verify test

verify:
	python3 infra/ci/verify_certificate.py

test:
	python3 infra/ci/verify_certificate.py
