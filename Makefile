all: clean build

build:
	gcc student_a64_template.s a64_testbench.o -o ac_lab -g -lm

clean:
	rm -f ac_lab

verify:
	python3 verify.py