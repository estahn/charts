
.PHONY: pre-commit
pre-commit:
	pre-commit run --all-files


.PHONY: helm-docs
helm-docs:
	helm-docs


.PHONY: tools-macos
tools-macos:
	brew install pre-commit norwoodj/tap/helm-docs

.PHONY: prep
prep: helm-docs pre-commit
