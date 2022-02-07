all: shellcheck test

shellcheck:
	shellcheck bashdag

test:
	./bashdag -f dag.conf -s
	./bashdag -f dag.conf -r restapi
