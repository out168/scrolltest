CC = wla-z80
CFLAGS = -o
CFLAGSL = -l
LD = wlalink
LDFLAGS = -vds

SFILES = prom0.z80
IFILES = 
OFILES = prom0.o

all: prom0.rom

prom0.rom: prom0.o libv99x8.o Makefile linkfile
	$(LD) $(LDFLAGS) linkfile prom0.rom

prom0.o: prom0.z80
	$(CC) $(CFLAGS) prom0.z80 prom0.o

libv99x8.o: libv99x8.z80
	$(CC) $(CFLAGSL) libv99x8.z80 libv99x8.o

$(OFILES): $(HFILES)

clean:
	rm -f $(OFILES) *.o *.sym *.rom core *~ 
