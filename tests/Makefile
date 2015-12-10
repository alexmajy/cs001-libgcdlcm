HEADER=../src/gcdlcm.h

all: test-static test-share

test: test-static test-share
	@./test_all.sh
	
test.o: test.cc $(HEADER)
	g++ -c test.cc

test-static: test.o 
	g++ -static $^ -L../src -lgcdlcm -o $@

test-share: test.o
	g++ $^ -L../src -lgcdlcm -o $@

clean:
	rm -f *.o test-static test-share *.out
