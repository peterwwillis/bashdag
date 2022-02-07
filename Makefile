all: shellcheck test

shellcheck:
	shellcheck bashdag

test:
	env -i ./bashdag -f dag.conf -r restapi
