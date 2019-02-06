.PHONY: test
test:
	export SECRET_PROJECT_ROOT="${PWD}"; \
	bats tests/

