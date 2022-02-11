all: shellcheck test

shellcheck:
	shellcheck bashdag

test:
	./bashdag -f dag.conf -s
	command -v yq && ./bashdag -f dag.conf -s -o yaml | yq
	command -v jq && ./bashdag -f dag.conf -s -o json | jq .
	./bashdag -f dag.conf -r restapi
