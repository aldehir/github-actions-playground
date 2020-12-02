.PHONY: all clean

all: hello

%.o: %.c
	$(CC) -c -o $@ $<

hello: hello.o
	$(CC) -o $@ $<

clean:
	rm -f *.o
	rm -f hello
