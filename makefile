main: hasher scripts

hasher: 
	cd src; \
		gcc -O3 -march=native -std=c99 hasher.c skein.c skein_block.c -o ../hasher \
 		|| gcc -O3 -std=c99 hasher.c skein.c skein_block.c -o ../hasher

scripts: autosubmit run

autosubmit:
	cp src/autosubmit .
	chmod +x autosubmit

run:
	cp src/run .
	chmod +x autosubmit

clean:
	rm run autosubmit hasher
