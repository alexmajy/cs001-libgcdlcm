DIRS=src tests

all:
	for dir in $(DIRS); do $(MAKE) -C $$dir all; done

clean:
	for dir in $(DIRS); do $(MAKE) -C $$dir clean; done



