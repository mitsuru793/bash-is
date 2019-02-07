.PHONY: test
test:
	export SECRET_PROJECT_ROOT="${PWD}"; \
	bats tests/

.PHONY: test-debug
test-debug:
	export SECRET_PROJECT_ROOT="${PWD}"; \
	bats tests/ --tap

