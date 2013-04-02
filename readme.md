# Motivation #

This is a quick fork of sfackler's xkcdhash, which is generally pretty good.

It fixes a few flaws, and it might also royally screw up some things. The
changes include:

* Removed threads. The motivation for this is that hashing tends to take up the
whole CPU anyway, and if you have multiple cores it may be easier for you to
just run multiple copies
* The original implementation was doing some weird selection of test strings,
which resulted in only strings of decimal digits, and was generally pretty hard
to decipher. I've assumed that whatever it was wasn't cleverer than Skein
itself, and instead build totally random alphanumeric strings with random
lengths.
* The original did some weird stuff at install time. Now, just type `make`
and you're good to go.

# Usage #

To set up, run `make`.

To run, run `./run`.
