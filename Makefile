CFLAGS = -Wall $(shell sdl-config --cflags)
LIBS = $(shell sdl-config --libs)

hello-gl: hello-gl.o util.o
	gcc -o hello-gl $^ $(LIBS) -lGLESv2 -lm

.c.o:
	gcc -c -o $@ $< $(CFLAGS)

clean:
	rm -f hello-gl hello-gl.o util.o


