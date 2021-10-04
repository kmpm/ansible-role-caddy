

.PHONY: test
test: lint
	molecule test


.PHONY: lint
lint:
	yamllint .
	ansible-lint
