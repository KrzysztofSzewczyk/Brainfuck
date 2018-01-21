	top:top top sqmain

_putchar:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t3 (-1)

	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_getchar:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0

	t1; (-1) t1
	ax; t1 ax
	Z Z end_getchar

end_getchar:
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_strcpy:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; dec t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l1:
	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2 Z; ?+9; Z ?+5; Z; inc 0
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t2; bp t3; c1 t3; t3 t2
	t3; t4; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t4
	t2 Z; ?+9; Z ?+5; Z; inc 0
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z
	t4; t1 Z; Z t4; c3 t4 ?+3; Z Z ?+15
	Z; t4 Z ?+9; Z; t4; inc t4
	Z t4 l2
	Z Z l1
l2:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_strcpy

end_strcpy:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_strcat:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; dec t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l3:
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3 ?+3; Z Z ?+9; Z; t2 t3; t2 t3
	Z t3 l4
	t1; t2; bp t1; c1 t1; t1 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l3
l4:

l5:
	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2 Z; ?+9; Z ?+5; Z; inc 0
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t2; bp t3; c1 t3; t3 t2
	t3; t4; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t4
	t2 Z; ?+9; Z ?+5; Z; inc 0
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z
	t4; t1 Z; Z t4; c3 t4 ?+3; Z Z ?+15
	Z; t4 Z ?+9; Z; t4; inc t4
	Z t4 l6
	Z Z l5
l6:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_strcat

end_strcat:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_strchr:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l7:
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c2 t3; t3 t1
	t3; t4; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t4
	t1; t2 Z; Z t1; Z; t4 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	t4; t1 t4; inc t4
	Z t4 l9
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c3 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l10
	ax; c5 ax
	Z Z end_strchr
l10:
l8:
	t1; t2; bp t1; c1 t1; t1 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l7
l9:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_strchr

end_strchr:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_strlen:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; dec t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l11:
	t3; t1; bp t3; dec t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; c3 t2 ?+3; Z Z ?+15
	Z; t2 Z ?+9; Z; t2; inc t2
	Z t2 l13
l12:
	t3; t1; bp t3; dec t3; t3 t1
	t1 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l11
l13:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t3 Z; Z t1; Z; t4 t1
	ax; t1 ax
	Z Z end_strlen

end_strlen:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_puts:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

l14:
	t3; t2; bp t3; c1 t3; t3 t2
	t3; t4; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t4
	t2; t3; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t3
	t4; t3 Z; Z t4 ?+3; Z Z ?+9; Z; t3 t4; t3 t4
	Z t4 l15
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2 Z; ?+9; Z ?+5; Z; inc 0
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _putchar; . ?;
	c1 sp
	Z Z l14
l15:

	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_gets:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c7 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t5 0

	t1; t2; bp t1; c6 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c7 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l16:
	t1; dec Z; Z t1 ?+3; Z Z ?+9; Z; dec t1; dec t1
	Z t1 l17
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _getchar; . ?;
	t1; ax t1
	inc sp
	t2; t3; bp t2; dec t2; t2 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c8 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	t3; inc t3; Z t2 ?+3; Z Z l18
	t1; t4; bp t1; dec t1; t1 t4
	t1; t5; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t5
	t4; t5 Z; Z t4; Z; c9 t4 ?+3
	t4 t4 ?+9; t4 Z ?+3; Z Z ?+3; inc t4
	Z t4 ?+3; Z Z l18; t3;
l18:
	Z t3 l19
	t1; t2; bp t1; c7 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c6 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	Z Z l17


	Z Z l20
l19:
	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c7 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t5; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t5
	t2; t1; t4 t2; t5 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0

l20:

	Z Z l16
l17:

	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_isspace:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t5 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c10 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	t3; inc t3; Z t2 ?+3; Z Z l21
	t1; t4; bp t1; c1 t1; t1 t4
	t1; t5; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t5
	t4; t5 Z; Z t4; Z; c8 t4 ?+3
	t4 t4 ?+9; t4 Z ?+3; Z Z ?+3; inc t4
	Z t4 ?+3; Z Z l21; t3;
l21:
	t4; inc t4; Z t3 ?+3; Z Z l22
	t2; t5; bp t2; c1 t2; t2 t5
	t2; t1; ?+11; t5 Z; Z ?+4; Z; 0 t2; t2 t1
	t5; t1 Z; Z t5; Z; c11 t5 ?+3
	t5 t5 ?+9; t5 Z ?+3; Z Z ?+3; inc t5
	Z t5 ?+3; Z Z l22; t4;
l22:
	t5; inc t5; Z t4 ?+3; Z Z l23
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c12 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 ?+3; Z Z l23; t5;
l23:
	t1; inc t1; Z t5 ?+3; Z Z l24
	t4; t2; bp t4; c1 t4; t4 t2
	t4; t3; ?+11; t2 Z; Z ?+4; Z; 0 t4; t4 t3
	t2; t3 Z; Z t2; Z; c9 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 ?+3; Z Z l24; t1;
l24:
	t2; inc t2; Z t1 ?+3; Z Z l25
	t5; t3; bp t5; c1 t5; t5 t3
	t5; t4; ?+11; t3 Z; Z ?+4; Z; 0 t5; t5 t4
	t3; t4 Z; Z t3; Z; c13 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 ?+3; Z Z l25; t2;
l25:
	Z t2 l26
	t2; dec Z; Z t2; Z
	Z Z l27
l26:
	t2; c3 Z; Z t2; Z
l27:
	ax; t2 ax
	Z Z end_isspace

end_isspace:
	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_isalpha:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t5 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t6 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t7 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c14 t2; inc t2
	t3; Z t2 l28
	t1; t4; bp t1; c1 t1; t1 t4
	t1; t5; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t5
	t4; c15 Z; Z t4; Z; t5 t4; inc t4
	Z t4 l28; inc t3;
l28:
	t4; inc t4; Z t3 ?+3; Z Z l30
	t2; t5; bp t2; c1 t2; t2 t5
	t2; t1; ?+11; t5 Z; Z ?+4; Z; 0 t2; t2 t1
	t5; t1 Z; Z t5; Z; c16 t5; inc t5
	t1; Z t5 l29
	t2; t6; bp t2; c1 t2; t2 t6
	t2; t7; ?+11; t6 Z; Z ?+4; Z; 0 t2; t2 t7
	t6; c17 Z; Z t6; Z; t7 t6; inc t6
	Z t6 l29; inc t1;
l29:
	Z t1 ?+3; Z Z l30; t4;
l30:
	Z t4 l31
	t4; dec Z; Z t4; Z
	Z Z l32
l31:
	t4; c3 Z; Z t4; Z
l32:
	ax; t4 ax
	Z Z end_isalpha

end_isalpha:
	?+8; sp ?+4; t7; 0 t7; inc sp
	?+8; sp ?+4; t6; 0 t6; inc sp
	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_isdigit:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t5 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c18 t2; inc t2
	t3; Z t2 l33
	t1; t4; bp t1; c1 t1; t1 t4
	t1; t5; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t5
	t4; c19 Z; Z t4; Z; t5 t4; inc t4
	Z t4 l33; inc t3;
l33:
	Z t3 l34
	t3; dec Z; Z t3; Z
	Z Z l35
l34:
	t3; c3 Z; Z t3; Z
l35:
	ax; t3 ax
	Z Z end_isdigit

end_isdigit:
	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_isprint:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t5 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c13 t2; inc t2
	t3; Z t2 l36
	t1; t4; bp t1; c1 t1; t1 t4
	t1; t5; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t5
	t4; c20 Z; Z t4; Z; t5 t4; inc t4
	Z t4 l36; inc t3;
l36:
	Z t3 l37
	t3; dec Z; Z t3; Z
	Z Z l38
l37:
	t3; c3 Z; Z t3; Z
l38:
	ax; t3 ax
	Z Z end_isprint

end_isprint:
	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_memcmp:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c6 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t5 0

	t1; t2; bp t1; c21 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2 ?+3; Z Z ?+9; Z; t3 t2; t3 t2
	Z t2 l42
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; dec t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c6 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l39:
	t1; t2; bp t1; c21 t1; t1 t2
	t2 Z; ?+9; Z ?+5; Z; dec 0
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2 ?+3; Z Z ?+9; Z; t3 t2; t3 t2
	Z t2 l40
	t3; t1; bp t3; dec t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1 Z; ?+9; Z ?+5; Z; inc 0
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c6 t2; t2 t1
	t2; t5; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t5
	t1 Z; ?+9; Z ?+5; Z; inc 0
	t1; t2; ?+11; t5 Z; Z ?+4; Z; 0 t1; t1 t2
	t5; t3 Z; Z t5; t2 t5 ?+3; Z Z ?+15
	Z; t5 Z ?+9; Z; t5; inc t5
	Z t5 l41
	t1; t2; bp t1; dec t1; t1 t2
	t2 Z; ?+9; Z ?+5; Z; dec 0
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t2; bp t3; c6 t3; t3 t2
	t2 Z; ?+9; Z ?+5; Z; dec 0
	t3; t4; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t4
	t2; t3; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t3
	t4; t1 Z; Z t4; Z; t3 t4
	ax; t4 ax
	Z Z end_memcmp
l41:

	Z Z l39
l40:

l42:

	ax; c3 ax
	Z Z end_memcmp

end_memcmp:
	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_atoi:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c7 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

l43:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _isspace; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3 ?+3; Z Z ?+9; Z; t1 t3; t1 t3
	Z t3 l44
	t1; t2; bp t1; c1 t1; t1 t2
	?+15; t2 Z; Z ?+8; Z
	dec Z; Z 0; Z

	Z Z l43
l44:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c23 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l46
	t1; t2; bp t1; c7 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	t1; t2; bp t1; c1 t1; t1 t2
	?+15; t2 Z; Z ?+8; Z
	dec Z; Z 0; Z

	Z Z l47
l46:
	t1; t2; bp t1; c7 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c22 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l45
	t1; t2; bp t1; c1 t1; t1 t2
	?+15; t2 Z; Z ?+8; Z
	dec Z; Z 0; Z

l45:

l47:

l48:
	t1; dec Z; Z t1 ?+3; Z Z ?+9; Z; dec t1; dec t1
	Z t1 l50
	t3; t2; bp t3; c1 t3; t3 t2
	t3; t4; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t4
	t2; t3; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t3
	t4; t3 Z; Z t4; Z; c18 t4
	t3; t2; bp t3; c6 t3; t3 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t4 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c10 t2
	Z t2 l51
	Z Z l50


l51:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c8 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mul; . ?;
	t3; ax t3
	c2 sp
	t2; t1; bp t2; c6 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; bp t1; dec t1; t1 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

l49:
	t2; t3; bp t2; c1 t2; t2 t3
	?+15; t3 Z; Z ?+8; Z
	dec Z; Z 0; Z
	Z Z l48
l50:

	t1; t2; bp t1; c7 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2 ?+3; Z Z ?+9; Z; t3 t2; t3 t2
	Z t2 l52
	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	ax; t2 ax
	Z Z end_atoi

l52:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_atoi

end_atoi:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_strsep:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c24 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t2; bp t3; dec t3; t3 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z
	t2; t1 Z; Z t2; Z; c5 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l53
	ax; c5 ax
	Z Z end_strsep
l53:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c24 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l54:
	t3; dec Z; Z t3 ?+3; Z Z ?+9; Z; dec t3; dec t3
	Z t3 l56
	t1; t2; bp t1; dec t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2 Z; ?+9; Z ?+5; Z; inc 0
	t2; t1; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t1
	t4; t2; bp t4; c7 t4; t4 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c6 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l57:
	t1; t2; bp t1; c25 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2 ?+3; Z Z ?+9; Z; t3 t2; t3 t2
	Z t2 l58
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2 Z; ?+9; Z ?+5; Z; inc 0
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t2; bp t3; c25 t3; t3 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z
	t2; t3; bp t2; c7 t2; t2 t3
	t2; t4; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t4
	t3; t1 Z; Z t3; Z; t4 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l61
	t2; t1; bp t2; c7 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; Z t3 ?+3; Z Z ?+9
	t3 Z ?+3; Z Z ?+3; inc t1
	Z t1 l59
	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c5 Z; Z 0; Z
	Z Z l60
l59:
	t2; t1; bp t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; t3 t1; inc t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l60:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; c24 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_strsep

l61:

	Z Z l57
l58:

l55:
	Z Z l54
l56:

	ax; c5 ax
	Z Z end_strsep

end_strsep:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_strrchr:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c6 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t5 0

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c6 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c5 Z; Z 0; Z
l62:
	t2; dec Z; Z t2 ?+3; Z Z ?+9; Z; dec t2; dec t2
	Z t2 l64
	t4; t3; bp t4; c1 t4; t4 t3
	t4; t1; ?+11; t3 Z; Z ?+4; Z; 0 t4; t4 t1
	t3; t4; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t4
	t1; t3; bp t1; c6 t1; t1 t3
	t1; t5; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t5
	t3; t4 Z; Z t3; Z; t5 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l65
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t4; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t4
	t1; t3; bp t1; dec t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t4 Z; Z 0; Z
l65:

	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t2
	t4; t2 Z; Z t4; Z; c3 t4 ?+3
	t4 t4 ?+9; t4 Z ?+3; Z Z ?+3; inc t4
	Z t4 l66
	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_strrchr
l66:

l63:
	t1; t3; bp t1; c1 t1; t1 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l62
l64:

end_strrchr:
	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_strcmp:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

l67:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t2; bp t3; c2 t3; t3 t2
	t3; t4; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t4
	t2; t3; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t3
	t4; t1 Z; Z t4; Z; t3 t4 ?+3
	t4 t4 ?+9; t4 Z ?+3; Z Z ?+3; inc t4
	Z t4 l69
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c3 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l70
	ax; c3 ax
	Z Z end_strcmp

l70:

l68:
	t3; t1; bp t3; c1 t3; t3 t1
	t1 Z; ?+9; Z ?+5; Z; inc 0
	t1; t3; bp t1; c2 t1; t1 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l67
l69:

	ax; dec ax
	Z Z end_strcmp

end_strcmp:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_memcpy:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c6 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; dec t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c6 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l71:
	t1; t4; bp t1; c21 t1; t1 t4
	t1; t2; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t2
	t4 Z; ?+9; Z ?+5; Z; dec 0
	t4; t2 Z; Z t4 ?+3; Z Z ?+9; Z; t2 t4; t2 t4
	Z t4 l72
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2 Z; ?+9; Z ?+5; Z; inc 0
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t2; bp t3; dec t3; t3 t2
	t3; t4; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t4
	t2 Z; ?+9; Z ?+5; Z; inc 0
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z
	Z Z l71
l72:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_memcpy

end_memcpy:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_strdup:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c26 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; t1; t3 t2; dec t2; t2 t1
	t2; t3; bp t2; dec t2; t2 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c1 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _memcpy; . ?;
	c21 sp

	t1; t2; bp t1; c6 t1; t1 t2
	ax; t2 ax
	Z Z end_strdup

end_strdup:
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_printf:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t5 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t6 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t7 0

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l73:
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3 ?+3; Z Z ?+9; Z; t2 t3; t2 t3
	Z t3 l75
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; c27 t3 ?+3; Z Z ?+15
	Z; t3 Z ?+9; Z; t3; inc t3
	Z t3 l76
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t1; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t1
	t1 (-1)

	Z Z l74


l76:

	t1; t2; bp t1; c1 t1; t1 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0

	t7; t4; bp t7; c1 t7; t7 t4
	t7; t2; ?+11; t4 Z; Z ?+4; Z; 0 t7; t7 t2
	t4; t7; ?+11; t2 Z; Z ?+4; Z; 0 t4; t4 t7
	t2; t7 Z; Z t2; Z; c27 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l83
	c27 (-1)
	Z Z l84
l83:
	t4; t2; bp t4; c1 t4; t4 t2
	t4; t7; ?+11; t2 Z; Z ?+4; Z; 0 t4; t4 t7
	t2; t4; ?+11; t7 Z; Z ?+4; Z; 0 t2; t2 t4
	t7; t4 Z; Z t7; Z; c31 t7 ?+3
	t7 t7 ?+9; t7 Z ?+3; Z Z ?+3; inc t7
	Z t7 l81
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; bp t1; dec t1; t1 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	t1; t4; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t4
	t3; t2 Z; Z t3; Z; t4 t3
	t4; t2; ?+11; t3 Z; Z ?+4; Z; 0 t4; t4 t2
	t2 (-1)
	Z Z l82
l81:
	t2; t7; bp t2; c1 t2; t2 t7
	t2; t4; ?+11; t7 Z; Z ?+4; Z; 0 t2; t2 t4
	t7; t2; ?+11; t4 Z; Z ?+4; Z; 0 t7; t7 t2
	t4; t2 Z; Z t4; Z; c30 t4 ?+3
	t4 t4 ?+9; t4 Z ?+3; Z Z ?+3; inc t4
	Z t4 l79
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t4; bp t2; dec t2; t2 t4
	t4 Z; ?+9; Z ?+5; Z; inc 0
	t2; t1; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t1
	t4; t3 Z; Z t4; Z; t1 t4
	t1; t3; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp
	Z Z l80
l79:
	t2; t5; bp t2; c1 t2; t2 t5
	t2; t4; ?+11; t5 Z; Z ?+4; Z; 0 t2; t2 t4
	t5; t2; ?+11; t4 Z; Z ?+4; Z; 0 t5; t5 t2
	t4; t2 Z; Z t4; Z; c28 t4 ?+3
	t4 t4 ?+9; t4 Z ?+3; Z Z ?+3; inc t4
	t2; inc t2; Z t4 ?+3; Z Z l77
	t5; t6; bp t5; c1 t5; t5 t6
	t5; t7; ?+11; t6 Z; Z ?+4; Z; 0 t5; t5 t7
	t6; t5; ?+11; t7 Z; Z ?+4; Z; 0 t6; t6 t5
	t7; t5 Z; Z t7; Z; c29 t7 ?+3
	t7 t7 ?+9; t7 Z ?+3; Z Z ?+3; inc t7
	Z t7 ?+3; Z Z l77; t2;
l77:
	Z t2 l78
	t4; t1; bp t4; c1 t4; t4 t1
	t4; t2; bp t4; dec t4; t4 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0
	t4; t5; ?+11; t2 Z; Z ?+4; Z; 0 t4; t4 t5
	t2; t1 Z; Z t2; Z; t5 t2
	t5; t1; ?+11; t2 Z; Z ?+4; Z; 0 t5; t5 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __putint; . ?;
	c1 sp
l78:
l80:
l82:
l84:

l74:
	t2; t1; bp t2; c1 t2; t2 t1
	t1 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l73
l75:

	?+8; sp ?+4; t7; 0 t7; inc sp
	?+8; sp ?+4; t6; 0 t6; inc sp
	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

.  _randlast:0

_rand:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c32 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; _randlast Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mul; . ?;
	t1; ax t1
	c2 sp
	t2; t3; t1 t2; c33 t2; t2 t3
	_randlast; t3 Z; Z _randlast; Z

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c34 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c35 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; _randlast Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __div; . ?;
	t1; ax t1
	c2 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mod; . ?;
	t1; ax t1
	c2 sp
	ax; t1 ax
	Z Z end_rand

end_rand:
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_srand:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	_randlast; t3 Z; Z _randlast; Z

	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_add:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	ax; t2 ax
	Z Z end_add

end_add:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_sub:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t3 Z; Z t1; Z; t4 t1
	ax; t1 ax
	Z Z end_sub

end_sub:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_mul:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c6 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l85:
	t2; t1; bp t2; c6 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l87
	t3; t4; bp t3; c2 t3; t3 t4
	t3; t1; ?+11; t4 Z; Z ?+4; Z; 0 t3; t3 t1
	t4; t3; bp t4; dec t4; t4 t3
	?+15; t3 Z; Z ?+8; Z
	t1 Z; Z 0; Z
l86:
	t4; t3; bp t4; c6 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l85
l87:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_mul

end_mul:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_div:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

l88:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t3 Z; Z t1; Z; t4 t1
	Z t1 l89
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t3 Z; Z t1; Z; t4 t1
	t4; t3; bp t4; c1 t4; t4 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0

	Z Z l88
l89:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_div

end_div:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_mod:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

l90:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t3 Z; Z t1; Z; t4 t1; inc t1
	Z t1 l91
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t3 Z; Z t1; Z; t4 t1
	t4; t3; bp t4; c1 t4; t4 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	Z Z l90
l91:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_mod

end_mod:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_abs:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t5 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; c3 Z; Z t2; Z; t3 t2
	Z t2 l92
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t4; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t4
	t1; t4 t1
	t2; t1 Z; Z t2; Z
	Z Z l93
l92:
	t4; t3; bp t4; c1 t4; t4 t3
	t4; t5; ?+11; t3 Z; Z ?+4; Z; 0 t4; t4 t5
	t2; t5 Z; Z t2; Z
l93:
	ax; t2 ax
	Z Z end_abs

end_abs:
	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_pow:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c6 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l94:
	t2; t1; bp t2; c6 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c2 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l96
	t3; t4; bp t3; c1 t3; t3 t4
	t3; t1; ?+11; t4 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	t1; t4; bp t1; dec t1; t1 t4
	t1; t3; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mul; . ?;
	t3; ax t3
	c2 sp
	t4; t1; bp t4; dec t4; t4 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l95:
	t4; t3; bp t4; c6 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l94
l96:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_pow

end_pow:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_f:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; c21 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c2 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _pow; . ?;
	t1; ax t1
	c2 sp
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t4; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t4
	t3; t1 Z; Z t3; Z; t4 t3
	ax; t3 ax
	Z Z end_f

end_f:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_fPrime:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; dec t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _pow; . ?;
	t1; ax t1
	c2 sp
	ax; t1 ax
	Z Z end_fPrime

end_fPrime:
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_closeEnough:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t3 Z; Z t1; Z; t4 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _abs; . ?;
	t1; ax t1
	c1 sp
	t4; t3; bp t4; c2 t4; t4 t3
	t4; t2; ?+11; t3 Z; Z ?+4; Z; 0 t4; t4 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _abs; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; t1 t3
	Z t3 l97
	t3; dec Z; Z t3; Z
	Z Z l98
l97:
	t3; c3 Z; Z t3; Z
l98:
	ax; t3 ax
	Z Z end_closeEnough

end_closeEnough:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_findRoot:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t5 0

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _fPrime; . ?;
	t4; ax t4
	c1 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	t4; t1; bp t4; c2 t4; t4 t1
	t4; t2; ?+11; t1 Z; Z ?+4; Z; 0 t4; t4 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _f; . ?;
	t4; ax t4
	c2 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _div; . ?;
	t4; ax t4
	c2 sp
	t1; t3 Z; Z t1; Z; t4 t1
	t4; t3; bp t4; dec t4; t4 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t4; bp t1; c2 t1; t1 t4
	t1; t5; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t5
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t5 Z; Z 0; Z
	t5; t4; bp t5; dec t5; t5 t4
	t5; t1; ?+11; t4 Z; Z ?+4; Z; 0 t5; t5 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _closeEnough; . ?;
	t1; ax t1
	c2 sp
	t4; t1 Z; Z t4 ?+3; Z Z ?+9; Z; t1 t4; t1 t4
	Z t4 l99
	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_findRoot
	Z Z l100
l99:
	t2; t1; bp t2; dec t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	t4; t1; bp t4; c1 t4; t4 t1
	t4; t2; ?+11; t1 Z; Z ?+4; Z; 0 t4; t4 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _findRoot; . ?;
	t2; ax t2
	c2 sp
	ax; t2 ax
	Z Z end_findRoot
l100:

end_findRoot:
	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_sqrt:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; dec Z; Z 0; Z
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _findRoot; . ?;
	t3; ax t3
	c2 sp
	ax; t3 ax
	Z Z end_sqrt

end_sqrt:
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_alloca:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c65 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0

	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; Z t2 ?+3; Z Z ?+9
	t2 Z ?+3; Z Z ?+3; inc t1
	Z t1 l141
	ax; c5 ax
	Z Z end_alloca
	Z Z l142
l141:
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l139
	t1; t2; bp t1; dec t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l140
l139:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c6 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l137
	t1; t2; bp t1; c36 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l138
l137:
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c7 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l135
	t1; t2; bp t1; c37 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l136
l135:
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c25 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l133
	t1; t2; bp t1; c38 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l134
l133:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c24 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l131
	t1; t2; bp t1; c39 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l132
l131:
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c64 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l129
	t1; t2; bp t1; c40 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l130
l129:
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c63 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l127
	t1; t2; bp t1; c41 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l128
l127:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c62 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l125
	t1; t2; bp t1; c42 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l126
l125:
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c10 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l123
	t1; t2; bp t1; c43 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l124
l123:
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c8 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l121
	t1; t2; bp t1; c44 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l122
l121:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c11 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l119
	t1; t2; bp t1; c45 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l120
l119:
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c12 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l117
	t1; t2; bp t1; c46 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l118
l117:
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c9 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l115
	t1; t2; bp t1; c47 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l116
l115:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c61 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l113
	t1; t2; bp t1; c48 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l114
l113:
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c60 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l111
	t1; t2; bp t1; c49 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l112
l111:
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c59 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l109
	t1; t2; bp t1; c50 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l110
l109:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c58 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l107
	t1; t2; bp t1; c51 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l108
l107:
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c57 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l105
	t1; t2; bp t1; c52 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l106
l105:
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c56 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l103
	t1; t2; bp t1; c53 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l104
l103:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c55 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l101
	t1; t2; bp t1; c54 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l102
l101:
	ax; c5 ax
	Z Z end_alloca
l102:
l104:
l106:
l108:
l110:
l112:
l114:
l116:
l118:
l120:
l122:
l124:
l126:
l128:
l130:
l132:
l134:
l136:
l138:
l140:
l142:

end_alloca:
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_freea:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0

	t1; t2; bp t1; c1 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_main:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp

	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

__mul:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c7 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; c3 Z; Z t2; Z; t3 t2
	Z t2 l143
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	t3; t1; bp t3; c1 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	t3; t1; bp t3; dec t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

l143:

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; c3 Z; Z t2; Z; t3 t2
	Z t2 l144
	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	t3; t1; bp t3; c2 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	t3; t1; bp t3; dec t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

l144:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t4 Z; Z t1; Z; t3 t1
	Z t1 l145
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c6 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c1 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l145:

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c1 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __multr; . ?;
	t1; ax t1
	c2 sp
	t2; t3; bp t2; c7 t2; t2 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t2; t1; bp t2; dec t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t4 Z; Z t1; Z; c3 t1
	Z t1 l146
	t1; t2; bp t1; c7 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end__mul
l146:

	t1; t2; bp t1; c7 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	ax; t2 ax
	Z Z end__mul

end__mul:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

__putint:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; c3 Z; Z t2; Z; t3 t2
	Z t2 l147
	c23 (-1)

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __putintr; . ?;
	t2; ax t2
	c1 sp
	t3; t1; dec t3; t2 t3; t3 t1
	ax; t1 ax
	Z Z end__putint

l147:

	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t4 Z; Z t1; Z; c3 t1
	Z t1 l148
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __putintr; . ?;
	t3; ax t3
	c1 sp
	ax; t3 ax
	Z Z end__putint
l148:

	c18 (-1)

	ax; dec ax
	Z Z end__putint

end__putint:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

__div:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c7 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; c3 Z; Z t2; Z; t3 t2
	Z t2 l149
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	t3; t1; bp t3; c1 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	t3; t1; bp t3; dec t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

l149:

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; c3 Z; Z t2; Z; t3 t2
	Z t2 l150
	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	t3; t1; bp t3; c2 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	t3; t1; bp t3; dec t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

l150:

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; dec Z; Z t2; Z; t3 t2
	Z t2 l151
	ax; c3 ax
	Z Z end__div
l151:

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __divMod; . ?;
	t2; ax t2
	c21 sp
	t1; t3; bp t1; c7 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t2; t1; bp t2; dec t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t4 Z; Z t1; Z; c3 t1
	Z t1 l152
	t1; t2; bp t1; c7 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end__div
l152:

	t1; t2; bp t1; c7 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	ax; t2 ax
	Z Z end__div

end__div:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

__mod:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c6 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z
	t2; t1; bp t2; c6 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; c3 Z; Z t2; Z; t3 t2
	Z t2 l153
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	t3; t1; bp t3; c1 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	t3; t1; bp t3; dec t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

l153:

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; c3 Z; Z t2; Z; t3 t2
	Z t2 l154
	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	t3; t1; bp t3; c2 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	t3; t1; bp t3; dec t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

l154:

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; dec Z; Z t2; Z; t3 t2
	Z t2 l155
	ax; c3 ax
	Z Z end__mod
l155:

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __divMod; . ?;
	c21 sp

	t2; t1; bp t2; dec t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t4 Z; Z t1; Z; c3 t1
	Z t1 l156
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end__mod
l156:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 t2
	ax; t2 ax
	Z Z end__mod

end__mod:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

__multr:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c7 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; dec Z; Z t2; Z; t3 t2
	Z t2 l157
	ax; c3 ax
	Z Z end__multr
l157:

	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; c6 Z; Z t1; Z; t4 t1
	Z t1 l158
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end__multr
l158:

	t1; t2; bp t1; c7 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c6 Z; Z 0; Z
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __divMod; . ?;
	t3; ax t3
	c21 sp
	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t3; t1; bp t3; c6 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; dec Z; Z t1; Z; t2 t1
	Z t1 l159
	Z Z l160
l159:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c7 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l160:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c1 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t4; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t4
	t3; t2; t1 t3; t4 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __multr; . ?;
	t2; ax t2
	c2 sp
	t3; t4; bp t3; c7 t3; t3 t4
	t3; t1; ?+11; t4 Z; Z ?+4; Z; 0 t3; t3 t1
	t4; t3; t2 t4; t1 t4; t4 t3
	ax; t3 ax
	Z Z end__multr

end__multr:
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

__putintr:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c6 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c3 t2
	Z t2 l161
	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c8 Z; Z 0; Z
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __divMod; . ?;
	t3; ax t3
	c21 sp
	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __putintr; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; dec t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; c18 t2; t3 t2; t2 t1
	t1 (-1)

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; dec t2; t2 t1
	ax; t1 ax
	Z Z end__putintr

l161:

	ax; c3 ax
	Z Z end__putintr

end__putintr:
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

__divMod:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c25 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t5 0

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t4 Z; Z t1; Z; t3 t1
	Z t1 l162
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c21 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	ax; c3 ax
	Z Z end__divMod

l162:

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; dec t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
	t3; t1; bp t3; c6 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

l__divMod_next:
	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c7 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c25 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; dec t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; bp t1; dec t1; t1 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c6 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; bp t1; c6 t1; t1 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t5; t2; bp t5; c1 t5; t5 t2
	t5; t3; ?+11; t2 Z; Z ?+4; Z; 0 t5; t5 t3
	t2; t5; bp t2; dec t2; t2 t5
	t2; t1; ?+11; t5 Z; Z ?+4; Z; 0 t2; t2 t1
	t5; t1 Z; Z t5; Z; t3 t5
	Z t5 l163
	t1; t2; bp t1; c25 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c21 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	t4; t1; bp t4; c2 t4; t4 t1
	t4; t2; ?+11; t1 Z; Z ?+4; Z; 0 t4; t4 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; bp t1; c7 t1; t1 t2
	t1; t5; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t5
	t2; t4 Z; Z t2; Z; t5 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __divMod; . ?;
	t2; ax t2
	c21 sp
	t5; t4; t3 t5; t2 t5; t5 t4
	ax; t4 ax
	Z Z end__divMod
l163:

	Z Z l__divMod_next

end__divMod:
	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

sqmain:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _main; . ?; inc sp

	Z Z (-1)

. c1:-2 c2:-3 c21:-4 c3:0 c8:10 c28:100 c26:1025 c29:105 c65:107520 c41:10753 c11:11 c32:1103515245 c30:115 c12:12 c15:122 c33:12345 c20:126 c9:13 c61:14 c42:14337 c60:15 c37:1537 c59:16 c58:17 c57:18 c43:18433 c56:19 c6:2 c55:20 c44:23041 c45:28161 c7:3 c38:3073 c13:32 c34:32768 c46:33793 c27:37 c47:39937 c25:4 c4:40 78 85 76 76 41 0 c22:43 c23:45 c48:46593 c18:48 c24:5 c39:5121 c36:513 c49:53761 c19:57 c64:6 c50:61441 c16:65 c35:65536 c51:69633 c63:7 c40:7681 c52:78337 c62:8 c53:87553 c10:9 c17:90 c14:97 c54:97281 c31:99 c5:c4

. t1:0 t2:0 t3:0 t4:0 t5:0 t6:0 t7:0

. inc:-1 Z:0 dec:1 ax:0 bp:0 sp:-sp
