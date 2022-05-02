

.PHONY: test
test: lint
	molecule test

.PHONY: converge
converge: lint
	molecule converge

.PHONY: verify
verify: lint
	molecule verify

.PHONY: lint
lint:
	yamllint .
	ansible-lint
