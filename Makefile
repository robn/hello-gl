GL_INCLUDE = /usr/X11R6/include
GL_LIB = /usr/X11R6/lib

hello-gl: hello-gl.o util.o
	gcc -o hello-gl $^ -L$(GL_LIB) -lGL -lglut -lm

.c.o:
	gcc -c -o $@ $< -I$(GL_INCLUDE)

clean:
	rm -f hello-gl hello-gl.o util.o


