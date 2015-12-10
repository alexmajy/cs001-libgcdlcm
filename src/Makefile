all: libgcdlcm.a libgcdlcm.so

gcd.o: gcd.cc gcdlcm.h
	g++ -c gcd.cc

lcm.o: lcm.cc gcdlcm.h
	g++ -c lcm.cc

libgcdlcm.a: gcd.o lcm.o
	ar -cr $@ $^

libgcdlcm.so: gcd.cc lcm.cc gcdlcm.h
	g++ -fpic -shared gcd.cc lcm.cc -o $@

clean:
	rm -f *.o *.a *.so 

.PHONY: all clean
