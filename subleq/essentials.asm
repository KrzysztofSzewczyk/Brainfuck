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

	t1; t2; bp t1; c7 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_gets

end_gets:
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

_strsep:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c22 sp
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
	Z t2 l43
	ax; c5 ax
	Z Z end_strsep
l43:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c22 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l44:
	t3; dec Z; Z t3 ?+3; Z Z ?+9; Z; dec t3; dec t3
	Z t3 l46
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

l47:
	t1; t2; bp t1; c23 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2 ?+3; Z Z ?+9; Z; t3 t2; t3 t2
	Z t2 l48
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2 Z; ?+9; Z ?+5; Z; inc 0
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t2; bp t3; c23 t3; t3 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z
	t2; t3; bp t2; c7 t2; t2 t3
	t2; t4; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t4
	t3; t1 Z; Z t3; Z; t4 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l51
	t2; t1; bp t2; c7 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; Z t3 ?+3; Z Z ?+9
	t3 Z ?+3; Z Z ?+3; inc t1
	Z t1 l49
	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c5 Z; Z 0; Z
	Z Z l50
l49:
	t2; t1; bp t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; t3 t1; inc t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l50:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; c22 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_strsep

l51:

	Z Z l47
l48:

l45:
	Z Z l44
l46:

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
l52:
	t2; dec Z; Z t2 ?+3; Z Z ?+9; Z; dec t2; dec t2
	Z t2 l54
	t4; t3; bp t4; c1 t4; t4 t3
	t4; t1; ?+11; t3 Z; Z ?+4; Z; 0 t4; t4 t1
	t3; t4; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t4
	t1; t3; bp t1; c6 t1; t1 t3
	t1; t5; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t5
	t3; t4 Z; Z t3; Z; t5 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l55
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t4; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t4
	t1; t3; bp t1; dec t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t4 Z; Z 0; Z
l55:

	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t2
	t4; t2 Z; Z t4; Z; c3 t4 ?+3
	t4 t4 ?+9; t4 Z ?+3; Z Z ?+3; inc t4
	Z t4 l56
	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_strrchr
l56:

l53:
	t1; t3; bp t1; c1 t1; t1 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l52
l54:

end_strrchr:
	?+8; sp ?+4; t5; 0 t5; inc sp
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

l57:
	t1; t4; bp t1; c21 t1; t1 t4
	t1; t2; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t2
	t4 Z; ?+9; Z ?+5; Z; dec 0
	t4; t2 Z; Z t4 ?+3; Z Z ?+9; Z; t2 t4; t2 t4
	Z t4 l58
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2 Z; ?+9; Z ?+5; Z; inc 0
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t2; bp t3; dec t3; t3 t2
	t3; t4; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t4
	t2 Z; ?+9; Z ?+5; Z; inc 0
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z
	Z Z l57
l58:

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
	c24 sp
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
l59:
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3 ?+3; Z Z ?+9; Z; t2 t3; t2 t3
	Z t3 l61
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; c25 t3 ?+3; Z Z ?+15
	Z; t3 Z ?+9; Z; t3; inc t3
	Z t3 l62
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t1; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t1
	t1 (-1)

	Z Z l60


l62:

	t1; t2; bp t1; c1 t1; t1 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0

	t7; t4; bp t7; c1 t7; t7 t4
	t7; t2; ?+11; t4 Z; Z ?+4; Z; 0 t7; t7 t2
	t4; t7; ?+11; t2 Z; Z ?+4; Z; 0 t4; t4 t7
	t2; t7 Z; Z t2; Z; c25 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l69
	c25 (-1)
	Z Z l70
l69:
	t4; t2; bp t4; c1 t4; t4 t2
	t4; t7; ?+11; t2 Z; Z ?+4; Z; 0 t4; t4 t7
	t2; t4; ?+11; t7 Z; Z ?+4; Z; 0 t2; t2 t4
	t7; t4 Z; Z t7; Z; c29 t7 ?+3
	t7 t7 ?+9; t7 Z ?+3; Z Z ?+3; inc t7
	Z t7 l67
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; bp t1; dec t1; t1 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	t1; t4; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t4
	t3; t2 Z; Z t3; Z; t4 t3
	t4; t2; ?+11; t3 Z; Z ?+4; Z; 0 t4; t4 t2
	t2 (-1)
	Z Z l68
l67:
	t2; t7; bp t2; c1 t2; t2 t7
	t2; t4; ?+11; t7 Z; Z ?+4; Z; 0 t2; t2 t4
	t7; t2; ?+11; t4 Z; Z ?+4; Z; 0 t7; t7 t2
	t4; t2 Z; Z t4; Z; c28 t4 ?+3
	t4 t4 ?+9; t4 Z ?+3; Z Z ?+3; inc t4
	Z t4 l65
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
	Z Z l66
l65:
	t2; t5; bp t2; c1 t2; t2 t5
	t2; t4; ?+11; t5 Z; Z ?+4; Z; 0 t2; t2 t4
	t5; t2; ?+11; t4 Z; Z ?+4; Z; 0 t5; t5 t2
	t4; t2 Z; Z t4; Z; c26 t4 ?+3
	t4 t4 ?+9; t4 Z ?+3; Z Z ?+3; inc t4
	t2; inc t2; Z t4 ?+3; Z Z l63
	t5; t6; bp t5; c1 t5; t5 t6
	t5; t7; ?+11; t6 Z; Z ?+4; Z; 0 t5; t5 t7
	t6; t5; ?+11; t7 Z; Z ?+4; Z; 0 t6; t6 t5
	t7; t5 Z; Z t7; Z; c27 t7 ?+3
	t7 t7 ?+9; t7 Z ?+3; Z Z ?+3; inc t7
	Z t7 ?+3; Z Z l63; t2;
l63:
	Z t2 l64
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
l64:
l66:
l68:
l70:

l60:
	t2; t1; bp t2; c1 t2; t2 t1
	t1 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l59
l61:

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
	?+9; sp ?+5; c30 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; _randlast Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mul; . ?;
	t1; ax t1
	c2 sp
	t2; t3; t1 t2; c31 t2; t2 t3
	_randlast; t3 Z; Z _randlast; Z

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c32 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c33 Z; Z 0; Z
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
l71:
	t2; t1; bp t2; c6 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l73
	t3; t4; bp t3; c2 t3; t3 t4
	t3; t1; ?+11; t4 Z; Z ?+4; Z; 0 t3; t3 t1
	t4; t3; bp t4; dec t4; t4 t3
	?+15; t3 Z; Z ?+8; Z
	t1 Z; Z 0; Z
l72:
	t4; t3; bp t4; c6 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l71
l73:

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

l74:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t3 Z; Z t1; Z; t4 t1
	Z t1 l75
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

	Z Z l74
l75:

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

l76:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t3 Z; Z t1; Z; t4 t1; inc t1
	Z t1 l77
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t3 Z; Z t1; Z; t4 t1
	t4; t3; bp t4; c1 t4; t4 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	Z Z l76
l77:

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
	Z t2 l78
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t4; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t4
	t1; t4 t1
	t2; t1 Z; Z t2; Z
	Z Z l79
l78:
	t4; t3; bp t4; c1 t4; t4 t3
	t4; t5; ?+11; t3 Z; Z ?+4; Z; 0 t4; t4 t5
	t2; t5 Z; Z t2; Z
l79:
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
l80:
	t2; t1; bp t2; c6 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c2 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l82
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

l81:
	t4; t3; bp t4; c6 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l80
l82:

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
	Z t3 l83
	t3; dec Z; Z t3; Z
	Z Z l84
l83:
	t3; c3 Z; Z t3; Z
l84:
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
	Z t4 l85
	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_findRoot
	Z Z l86
l85:
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
l86:

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
	c63 sp
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
	Z t1 l127
	ax; c5 ax
	Z Z end_alloca
	Z Z l128
l127:
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l125
	t1; t2; bp t1; dec t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l126
l125:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c6 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l123
	t1; t2; bp t1; c34 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l124
l123:
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c7 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l121
	t1; t2; bp t1; c35 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l122
l121:
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c23 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l119
	t1; t2; bp t1; c36 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l120
l119:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c22 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l117
	t1; t2; bp t1; c37 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l118
l117:
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c62 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l115
	t1; t2; bp t1; c38 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l116
l115:
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c61 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l113
	t1; t2; bp t1; c39 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l114
l113:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c60 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l111
	t1; t2; bp t1; c40 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l112
l111:
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c10 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l109
	t1; t2; bp t1; c41 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l110
l109:
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c8 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l107
	t1; t2; bp t1; c42 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l108
l107:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c11 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l105
	t1; t2; bp t1; c43 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l106
l105:
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c12 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l103
	t1; t2; bp t1; c44 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l104
l103:
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c9 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l101
	t1; t2; bp t1; c45 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l102
l101:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c59 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l99
	t1; t2; bp t1; c46 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l100
l99:
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c58 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l97
	t1; t2; bp t1; c47 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l98
l97:
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c57 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l95
	t1; t2; bp t1; c48 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l96
l95:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c56 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l93
	t1; t2; bp t1; c49 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l94
l93:
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c55 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l91
	t1; t2; bp t1; c50 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l92
l91:
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c54 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l89
	t1; t2; bp t1; c51 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l90
l89:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c53 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l87
	t1; t2; bp t1; c52 t1; t1 t2
	ax; t2 ax
	Z Z end_alloca

	Z Z l88
l87:
	ax; c5 ax
	Z Z end_alloca
l88:
l90:
l92:
l94:
l96:
l98:
l100:
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

_NULL:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp

	ax; c5 ax
	Z Z end_NULL

end_NULL:
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_upper:
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

	t1; t3; bp t1; c1 t1; t1 t3
	t1; t5; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t5
	t3; t5 Z; Z t3; Z; c14 t3; inc t3
	t5; Z t3 l129
	t1; t6; bp t1; c1 t1; t1 t6
	t1; t7; ?+11; t6 Z; Z ?+4; Z; 0 t1; t1 t7
	t6; c15 Z; Z t6; Z; t7 t6; inc t6
	Z t6 l129; inc t5;
l129:
	Z t5 l130
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c16 t2; t2 t1
	t2; t1 Z; Z t2; Z; c14 t2
	t1; t3; bp t1; c1 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z
	ax; t2 ax
	Z Z end_upper
	Z Z l131
l130:
	t3; t1; bp t3; c1 t3; t3 t1
	t3; t4; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t4
	ax; t4 ax
	Z Z end_upper
l131:

end_upper:
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
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t5 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t6 0

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	t1; t2; bp t1; c7 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t3 Z; Z t1; Z; c64 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l132
	t1; t2; bp t1; c6 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; inc Z; Z 0; Z

	t1; t2; bp t1; c7 t1; t1 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0

l132:

l133:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c7 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t4 Z; Z t2; c3 t2 ?+3; Z Z ?+15
	Z; t2 Z ?+9; Z; t2; inc t2
	Z t2 l135
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c8 Z; Z 0; Z
	t1; t4; bp t1; dec t1; t1 t4
	t1; t3; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mul; . ?;
	t3; ax t3
	c2 sp
	t4; t1; bp t4; c1 t4; t4 t1
	t4; t5; ?+11; t1 Z; Z ?+4; Z; 0 t4; t4 t5
	t1; t4; bp t1; c7 t1; t1 t4
	t1; t6; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t6
	t4; t1; t5 t4; t6 t4; t4 t1
	t4; t6; ?+11; t1 Z; Z ?+4; Z; 0 t4; t4 t6
	t1; t4; t3 t1; t6 t1; t1 t4
	t1; t4 Z; Z t1; Z; c18 t1
	t4; t6; bp t4; dec t4; t4 t6
	?+23; ?+21; ?+24; t6 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z
l134:
	t4; t1; bp t4; c7 t4; t4 t1
	t1 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l133
l135:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c6 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mul; . ?;
	t1; ax t1
	c2 sp
	ax; t1 ax
	Z Z end_atoi

end_atoi:
	?+8; sp ?+4; t6; 0 t6; inc sp
	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_cls:
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

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l136:
	t2; t1; bp t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; c65 Z; Z t1; Z; t3 t1
	Z t1 l138
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c67 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp
l137:
	t3; t2; bp t3; dec t3; t3 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l136
l138:

	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_calc:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c136 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t4 0

l139:
	t1; dec Z; Z t1 ?+3; Z Z ?+9; Z; dec t1; dec t1
	Z t1 l140
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c69 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; dec t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _gets; . ?;
	t2; ax t2
	c1 sp
	t1; t3; bp t1; c38 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; c70 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c7 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l187
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c16 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l186
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; dec t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c78 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l185
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c6 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c78 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l184
l_calc_aretry:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c72 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; dec t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _gets; . ?;
	t2; ax t2
	c1 sp
	t1; t3; bp t1; c73 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t2; t3; bp t2; c73 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l160
	t1; t2; bp t1; c73 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c17 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l141
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c74 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l141:

	t3; t2; bp t3; c73 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c16 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l152
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c74 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l153
l152:
	t3; t1; bp t3; c73 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c80 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l150
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c74 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l151
l150:
	t3; t2; bp t3; c73 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c79 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l148
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c74 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l149
l148:
	t3; t1; bp t3; c73 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c78 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l146
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c74 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l147
l146:
	t3; t2; bp t3; c73 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c77 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l144
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c74 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l145
l144:
	t3; t1; bp t3; c73 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c76 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l142
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c74 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l143
l142:
	t1; t2; bp t1; c73 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c74 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l143:
l145:
l147:
l149:
l151:
l153:

	Z Z l161
l160:
	t1; t2; bp t1; c73 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; Z t3 ?+3; Z Z ?+9
	t3 Z ?+3; Z Z ?+3; inc t2
	Z t2 l158
	Z Z l_calc_aretry

	Z Z l159
l158:
	t1; t2; bp t1; c81 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l154:
	t2; t1; bp t2; c81 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c73 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l156
	t1; t2; bp t1; c73 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c81 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _isdigit; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2 ?+3; Z Z ?+9; Z; t4 t2; t4 t2
	t4; t2 t4; inc t4
	Z t4 l157
	Z Z l_calc_aretry

l157:

l155:
	t4; t3; bp t4; c81 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l154
l156:

	t1; t2; bp t1; c73 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c74 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l159:
l161:

l_calc_bretry:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c83 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; dec t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _gets; . ?;
	t2; ax t2
	c1 sp
	t1; t3; bp t1; c73 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t2; t3; bp t2; c73 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l182
	t3; t1; bp t3; c73 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c17 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l174
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c84 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	Z Z l175
l174:
	t3; t2; bp t3; c73 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c16 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l172
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c84 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l173
l172:
	t3; t1; bp t3; c73 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c80 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l170
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c84 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l171
l170:
	t3; t2; bp t3; c73 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c79 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l168
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c84 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l169
l168:
	t3; t1; bp t3; c73 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c78 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l166
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c84 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l167
l166:
	t3; t2; bp t3; c73 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c77 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l164
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c84 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l165
l164:
	t3; t1; bp t3; c73 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c76 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l162
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c84 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l163
l162:
	t1; t2; bp t1; c73 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c84 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l163:
l165:
l167:
l169:
l171:
l173:
l175:

	Z Z l183
l182:
	t1; t2; bp t1; c73 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; Z t3 ?+3; Z Z ?+9
	t3 Z ?+3; Z Z ?+3; inc t2
	Z t2 l180
	Z Z l_calc_bretry

	Z Z l181
l180:
	t1; t2; bp t1; c85 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l176:
	t2; t1; bp t2; c85 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c73 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l178
	t1; t2; bp t1; c73 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c85 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _isdigit; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2 ?+3; Z Z ?+9; Z; t4 t2; t4 t2
	t4; t2 t4; inc t4
	Z t4 l179
	Z Z l_calc_bretry

l179:

l177:
	t4; t3; bp t4; c85 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l176
l178:

	t1; t2; bp t1; c73 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c84 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l181:
l183:

	t1; t2; bp t1; c84 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c74 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	t1; t2; bp t1; c74 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c84 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c87 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _printf; . ?;
	c88 sp

	t1; t2; bp t1; c74 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c84 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; bp t1; c70 t1; t1 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

l184:
l185:
l186:
l187:

	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c7 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l234
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c101 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l233
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; dec t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c100 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l232
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c6 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c80 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l231
l_calc_aretrys:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c90 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; dec t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _gets; . ?;
	t2; ax t2
	c1 sp
	t1; t3; bp t1; c91 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t2; t3; bp t2; c91 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l207
	t1; t2; bp t1; c91 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c17 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l188
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c92 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l188:

	t3; t2; bp t3; c91 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c16 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l199
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c92 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l200
l199:
	t3; t1; bp t3; c91 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c80 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l197
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c92 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l198
l197:
	t3; t2; bp t3; c91 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c79 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l195
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c92 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l196
l195:
	t3; t1; bp t3; c91 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c78 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l193
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c92 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l194
l193:
	t3; t2; bp t3; c91 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c77 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l191
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c92 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l192
l191:
	t3; t1; bp t3; c91 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c76 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l189
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c92 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l190
l189:
	t1; t2; bp t1; c91 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c92 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l190:
l192:
l194:
l196:
l198:
l200:

	Z Z l208
l207:
	t1; t2; bp t1; c91 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; Z t3 ?+3; Z Z ?+9
	t3 Z ?+3; Z Z ?+3; inc t2
	Z t2 l205
	Z Z l_calc_aretrys

	Z Z l206
l205:
	t1; t2; bp t1; c93 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l201:
	t2; t1; bp t2; c93 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c91 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l203
	t1; t2; bp t1; c91 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c93 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _isdigit; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2 ?+3; Z Z ?+9; Z; t4 t2; t4 t2
	t4; t2 t4; inc t4
	Z t4 l204
	Z Z l_calc_aretrys

l204:

l202:
	t4; t3; bp t4; c93 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l201
l203:

	t1; t2; bp t1; c91 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c92 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l206:
l208:

l_calc_bretrys:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c95 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; dec t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _gets; . ?;
	t2; ax t2
	c1 sp
	t1; t3; bp t1; c91 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t2; t3; bp t2; c91 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l229
	t3; t1; bp t3; c91 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c17 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l221
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c96 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	Z Z l222
l221:
	t3; t2; bp t3; c91 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c16 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l219
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c96 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l220
l219:
	t3; t1; bp t3; c91 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c80 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l217
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c96 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l218
l217:
	t3; t2; bp t3; c91 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c79 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l215
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c96 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l216
l215:
	t3; t1; bp t3; c91 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c78 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l213
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c96 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l214
l213:
	t3; t2; bp t3; c91 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c77 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l211
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c96 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l212
l211:
	t3; t1; bp t3; c91 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c76 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l209
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c96 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l210
l209:
	t1; t2; bp t1; c91 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c96 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l210:
l212:
l214:
l216:
l218:
l220:
l222:

	Z Z l230
l229:
	t1; t2; bp t1; c91 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; Z t3 ?+3; Z Z ?+9
	t3 Z ?+3; Z Z ?+3; inc t2
	Z t2 l227
	Z Z l_calc_bretrys

	Z Z l228
l227:
	t1; t2; bp t1; c97 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l223:
	t2; t1; bp t2; c97 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c91 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l225
	t1; t2; bp t1; c91 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c97 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _isdigit; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2 ?+3; Z Z ?+9; Z; t4 t2; t4 t2
	t4; t2 t4; inc t4
	Z t4 l226
	Z Z l_calc_bretrys

l226:

l224:
	t4; t3; bp t4; c97 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l223
l225:

	t1; t2; bp t1; c91 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c96 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l228:
l230:

	t1; t2; bp t1; c96 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c92 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	t1; t2; bp t1; c92 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c96 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t3 Z; Z t1; Z; t4 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c99 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _printf; . ?;
	c88 sp

	t1; t2; bp t1; c92 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c96 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t3 Z; Z t1; Z; t4 t1
	t4; t3; bp t4; c70 t4; t4 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

l231:
l232:
l233:
l234:

	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c7 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l281
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c114 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l280
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; dec t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c100 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l279
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c6 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c113 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l278
l_calc_aretrymu:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c103 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; dec t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _gets; . ?;
	t2; ax t2
	c1 sp
	t1; t3; bp t1; c104 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t2; t3; bp t2; c104 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l254
	t1; t2; bp t1; c104 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c17 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l235
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c105 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l235:

	t3; t2; bp t3; c104 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c16 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l246
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c105 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l247
l246:
	t3; t1; bp t3; c104 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c80 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l244
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c105 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l245
l244:
	t3; t2; bp t3; c104 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c79 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l242
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c105 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l243
l242:
	t3; t1; bp t3; c104 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c78 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l240
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c105 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l241
l240:
	t3; t2; bp t3; c104 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c77 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l238
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c105 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l239
l238:
	t3; t1; bp t3; c104 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c76 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l236
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c105 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l237
l236:
	t1; t2; bp t1; c104 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c105 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l237:
l239:
l241:
l243:
l245:
l247:

	Z Z l255
l254:
	t1; t2; bp t1; c104 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; Z t3 ?+3; Z Z ?+9
	t3 Z ?+3; Z Z ?+3; inc t2
	Z t2 l252
	Z Z l_calc_aretrymu

	Z Z l253
l252:
	t1; t2; bp t1; c106 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l248:
	t2; t1; bp t2; c106 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c104 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l250
	t1; t2; bp t1; c104 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c106 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _isdigit; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2 ?+3; Z Z ?+9; Z; t4 t2; t4 t2
	t4; t2 t4; inc t4
	Z t4 l251
	Z Z l_calc_aretrymu

l251:

l249:
	t4; t3; bp t4; c106 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l248
l250:

	t1; t2; bp t1; c104 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c105 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l253:
l255:

l_calc_bretrymu:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c108 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; dec t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _gets; . ?;
	t2; ax t2
	c1 sp
	t1; t3; bp t1; c104 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t2; t3; bp t2; c104 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l276
	t3; t1; bp t3; c104 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c17 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l268
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c109 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	Z Z l269
l268:
	t3; t2; bp t3; c104 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c16 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l266
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c109 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l267
l266:
	t3; t1; bp t3; c104 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c80 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l264
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c109 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l265
l264:
	t3; t2; bp t3; c104 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c79 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l262
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c109 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l263
l262:
	t3; t1; bp t3; c104 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c78 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l260
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c109 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l261
l260:
	t3; t2; bp t3; c104 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c77 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l258
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c109 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l259
l258:
	t3; t1; bp t3; c104 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c76 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l256
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c109 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l257
l256:
	t1; t2; bp t1; c104 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c109 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l257:
l259:
l261:
l263:
l265:
l267:
l269:

	Z Z l277
l276:
	t1; t2; bp t1; c104 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; Z t3 ?+3; Z Z ?+9
	t3 Z ?+3; Z Z ?+3; inc t2
	Z t2 l274
	Z Z l_calc_bretrymu

	Z Z l275
l274:
	t1; t2; bp t1; c110 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l270:
	t2; t1; bp t2; c110 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c104 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l272
	t1; t2; bp t1; c104 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c110 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _isdigit; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2 ?+3; Z Z ?+9; Z; t4 t2; t4 t2
	t4; t2 t4; inc t4
	Z t4 l273
	Z Z l_calc_bretrymu

l273:

l271:
	t4; t3; bp t4; c110 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l270
l272:

	t1; t2; bp t1; c104 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c109 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l275:
l277:

	t1; t2; bp t1; c109 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c105 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	t1; t2; bp t1; c109 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c105 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mul; . ?;
	t1; ax t1
	c2 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c112 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _printf; . ?;
	c88 sp

	t1; t2; bp t1; c109 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c105 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mul; . ?;
	t1; ax t1
	c2 sp
	t2; t3; bp t2; c70 t2; t2 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

l278:
l279:
l280:
l281:

	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c7 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l328
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c78 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l327
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; dec t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c127 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l326
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c6 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c126 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l325
l_calc_aretrydi:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c116 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; dec t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _gets; . ?;
	t2; ax t2
	c1 sp
	t1; t3; bp t1; c117 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t2; t3; bp t2; c117 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l301
	t1; t2; bp t1; c117 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c17 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l282
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c118 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l282:

	t3; t2; bp t3; c117 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c16 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l293
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c118 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l294
l293:
	t3; t1; bp t3; c117 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c80 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l291
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c118 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l292
l291:
	t3; t2; bp t3; c117 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c79 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l289
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c118 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l290
l289:
	t3; t1; bp t3; c117 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c78 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l287
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c118 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l288
l287:
	t3; t2; bp t3; c117 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c77 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l285
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c118 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l286
l285:
	t3; t1; bp t3; c117 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c76 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l283
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c118 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l284
l283:
	t1; t2; bp t1; c117 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c118 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l284:
l286:
l288:
l290:
l292:
l294:

	Z Z l302
l301:
	t1; t2; bp t1; c117 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; Z t3 ?+3; Z Z ?+9
	t3 Z ?+3; Z Z ?+3; inc t2
	Z t2 l299
	Z Z l_calc_aretrydi

	Z Z l300
l299:
	t1; t2; bp t1; c119 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l295:
	t2; t1; bp t2; c119 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c117 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l297
	t1; t2; bp t1; c117 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c119 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _isdigit; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2 ?+3; Z Z ?+9; Z; t4 t2; t4 t2
	t4; t2 t4; inc t4
	Z t4 l298
	Z Z l_calc_aretrydi

l298:

l296:
	t4; t3; bp t4; c119 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l295
l297:

	t1; t2; bp t1; c117 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c118 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l300:
l302:

l_calc_bretrydi:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c121 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; dec t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _gets; . ?;
	t2; ax t2
	c1 sp
	t1; t3; bp t1; c117 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t2; t3; bp t2; c117 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l323
	t3; t1; bp t3; c117 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c17 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l315
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c122 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	Z Z l316
l315:
	t3; t2; bp t3; c117 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c16 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l313
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c122 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l314
l313:
	t3; t1; bp t3; c117 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c80 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l311
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c122 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l312
l311:
	t3; t2; bp t3; c117 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c79 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l309
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c122 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l310
l309:
	t3; t1; bp t3; c117 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c78 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l307
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c122 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l308
l307:
	t3; t2; bp t3; c117 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c77 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l305
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c122 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l306
l305:
	t3; t1; bp t3; c117 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c76 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l303
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c122 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l304
l303:
	t1; t2; bp t1; c117 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c122 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l304:
l306:
l308:
l310:
l312:
l314:
l316:

	Z Z l324
l323:
	t1; t2; bp t1; c117 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; Z t3 ?+3; Z Z ?+9
	t3 Z ?+3; Z Z ?+3; inc t2
	Z t2 l321
	Z Z l_calc_bretrydi

	Z Z l322
l321:
	t1; t2; bp t1; c123 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l317:
	t2; t1; bp t2; c123 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c117 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l319
	t1; t2; bp t1; c117 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c123 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _isdigit; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2 ?+3; Z Z ?+9; Z; t4 t2; t4 t2
	t4; t2 t4; inc t4
	Z t4 l320
	Z Z l_calc_bretrydi

l320:

l318:
	t4; t3; bp t4; c123 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l317
l319:

	t1; t2; bp t1; c117 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c122 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l322:
l324:

	t1; t2; bp t1; c122 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c118 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	t1; t2; bp t1; c122 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c118 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _div; . ?;
	t1; ax t1
	c2 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c125 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _printf; . ?;
	c88 sp

	t1; t2; bp t1; c122 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c118 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _div; . ?;
	t1; ax t1
	c2 sp
	t2; t3; bp t2; c70 t2; t2 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

l325:
l326:
l327:
l328:

	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c7 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l375
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c114 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l374
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; dec t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c139 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l373
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c6 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c78 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l372
l_calc_aretrydv:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c129 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; dec t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _gets; . ?;
	t2; ax t2
	c1 sp
	t1; t3; bp t1; c130 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t2; t3; bp t2; c130 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l348
	t1; t2; bp t1; c130 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c17 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l329
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c131 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l329:

	t3; t2; bp t3; c130 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c16 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l340
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c131 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l341
l340:
	t3; t1; bp t3; c130 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c80 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l338
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c131 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l339
l338:
	t3; t2; bp t3; c130 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c79 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l336
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c131 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l337
l336:
	t3; t1; bp t3; c130 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c78 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l334
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c131 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l335
l334:
	t3; t2; bp t3; c130 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c77 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l332
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c131 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l333
l332:
	t3; t1; bp t3; c130 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c76 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l330
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c131 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l331
l330:
	t1; t2; bp t1; c130 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c131 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l331:
l333:
l335:
l337:
l339:
l341:

	Z Z l349
l348:
	t1; t2; bp t1; c130 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; Z t3 ?+3; Z Z ?+9
	t3 Z ?+3; Z Z ?+3; inc t2
	Z t2 l346
	Z Z l_calc_aretrydv

	Z Z l347
l346:
	t1; t2; bp t1; c132 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l342:
	t2; t1; bp t2; c132 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c130 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l344
	t1; t2; bp t1; c130 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c132 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _isdigit; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2 ?+3; Z Z ?+9; Z; t4 t2; t4 t2
	t4; t2 t4; inc t4
	Z t4 l345
	Z Z l_calc_aretrydv

l345:

l343:
	t4; t3; bp t4; c132 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l342
l344:

	t1; t2; bp t1; c130 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c131 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l347:
l349:

l_calc_bretrydv:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c134 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; dec t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _gets; . ?;
	t2; ax t2
	c1 sp
	t1; t3; bp t1; c130 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t2; t3; bp t2; c130 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l370
	t3; t1; bp t3; c130 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c17 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l362
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c135 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	Z Z l363
l362:
	t3; t2; bp t3; c130 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c16 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l360
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c135 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l361
l360:
	t3; t1; bp t3; c130 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c80 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l358
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c135 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l359
l358:
	t3; t2; bp t3; c130 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c79 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l356
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c135 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l357
l356:
	t3; t1; bp t3; c130 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c78 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l354
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c135 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l355
l354:
	t3; t2; bp t3; c130 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	t2; t3; t1 t2; c3 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t1; ax t1
	c1 sp
	t3; t1 Z; Z t3; Z; c77 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l352
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c135 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l353
l352:
	t3; t1; bp t3; c130 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c76 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l350
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c135 t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l351
l350:
	t1; t2; bp t1; c130 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c135 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l351:
l353:
l355:
l357:
l359:
l361:
l363:

	Z Z l371
l370:
	t1; t2; bp t1; c130 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; Z t3 ?+3; Z Z ?+9
	t3 Z ?+3; Z Z ?+3; inc t2
	Z t2 l368
	Z Z l_calc_bretrydv

	Z Z l369
l368:
	t1; t2; bp t1; c136 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l364:
	t2; t1; bp t2; c136 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c130 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l366
	t1; t2; bp t1; c130 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c136 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _isdigit; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2 ?+3; Z Z ?+9; Z; t4 t2; t4 t2
	t4; t2 t4; inc t4
	Z t4 l367
	Z Z l_calc_bretrydv

l367:

l365:
	t4; t3; bp t4; c136 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l364
l366:

	t1; t2; bp t1; c130 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _atoi; . ?;
	t3; ax t3
	c1 sp
	t2; t1; bp t2; c135 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l369:
l371:

	t1; t2; bp t1; c135 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c131 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	t1; t2; bp t1; c135 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c131 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _mod; . ?;
	t1; ax t1
	c2 sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c138 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _printf; . ?;
	c88 sp

	t1; t2; bp t1; c135 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c131 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _mod; . ?;
	t1; ax t1
	c2 sp
	t2; t3; bp t2; c70 t2; t2 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

l372:
l373:
l374:
l375:

	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; t3 Z; Z t2; Z; c23 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l380
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c3 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c77 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l379
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c141 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l378
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c6 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c127 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l377
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c7 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c140 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l376
	Z Z l140


l376:
l377:
l378:
l379:
l380:

	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; t3 Z; Z t2; Z; c23 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l385
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c3 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c16 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l384
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c16 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l383
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c6 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c142 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l382
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c7 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c101 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l381
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c75 t2; t2 t1
	t2; t4; t1 t2; c3 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l381:
l382:
l383:
l384:
l385:

	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; t3 Z; Z t2; Z; c23 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l390
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c3 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c80 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l389
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c16 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l388
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c6 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c142 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l387
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c7 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c101 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l386
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c75 t2; t2 t1
	t2; t4; t1 t2; dec t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l386:
l387:
l388:
l389:
l390:

	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; t3 Z; Z t2; Z; c23 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l395
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c3 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c79 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l394
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c16 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l393
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c6 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c142 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l392
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c7 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c101 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l391
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c75 t2; t2 t1
	t2; t4; t1 t2; c6 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l391:
l392:
l393:
l394:
l395:

	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; t3 Z; Z t2; Z; c23 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l400
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c3 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c78 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l399
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c16 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l398
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c6 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c142 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l397
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c7 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c101 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l396
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c75 t2; t2 t1
	t2; t4; t1 t2; c7 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l396:
l397:
l398:
l399:
l400:

	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; t3 Z; Z t2; Z; c23 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l405
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c3 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c77 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l404
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c16 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l403
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c6 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c142 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l402
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c7 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c101 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l401
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c75 t2; t2 t1
	t2; t4; t1 t2; c23 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l401:
l402:
l403:
l404:
l405:

	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; t3 Z; Z t2; Z; c23 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l410
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c3 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c76 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l409
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c16 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l408
	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c6 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c142 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l407
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c7 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c101 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l406
	t1; t2; bp t1; c70 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c75 t2; t2 t1
	t2; t4; t1 t2; c22 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l406:
l407:
l408:
l409:
l410:

	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l412
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c16 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l411
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c144 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _printf; . ?;
	c2 sp

l411:
l412:

	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l414
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c80 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l413
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c146 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _printf; . ?;
	c2 sp

l413:
l414:

	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l416
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c79 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l415
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c148 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _printf; . ?;
	c2 sp

l415:
l416:

	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l418
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c78 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l417
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c150 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _printf; . ?;
	c2 sp

l417:
l418:

	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l420
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c77 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l419
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c152 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _printf; . ?;
	c2 sp

l419:
l420:

	t1; t3; bp t1; c38 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l422
	t1; t2; bp t1; c38 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c76 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l421
	t1; t2; bp t1; c75 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c154 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _printf; . ?;
	c2 sp

l421:
l422:

	Z Z l139
l140:

	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_edit:
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
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _gets; . ?;
	t3; ax t3
	c1 sp
	ax; t3 ax
	Z Z end_edit

end_edit:
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_EPL:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c162 sp
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
	?+9; sp ?+5; c156 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; dec t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _gets; . ?;
	t2; ax t2
	c1 sp
	t1; t3; bp t1; c157 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c159 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; c160 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l423:
	t2; t1; bp t2; c160 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; c33 Z; Z t1; Z; t3 t1
	Z t1 l425
	t2; t3; bp t2; c161 t2; t2 t3
	t2; t4; bp t2; c160 t2; t2 t4
	t2; t5; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t5
	t4; t2; t3 t4; t5 t4; t4 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l424:
	t3; t2; bp t3; c160 t3; t3 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l423
l425:

	t1; t2; bp t1; c162 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c163 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l426:
	t2; t1; bp t2; c157 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c163 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t1; t3 t2; t4 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t4 Z; Z t1 ?+3; Z Z ?+9; Z; t4 t1; t4 t1
	Z t1 l428
	t2; t4; bp t2; c157 t2; t2 t4
	t2; t3; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t3
	t4; t2; bp t4; c163 t4; t4 t2
	t4; t5; ?+11; t2 Z; Z ?+4; Z; 0 t4; t4 t5
	t2; t4; t3 t2; t5 t2; t2 t4
	t2; t5; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t5
	t4; t2; bp t4; c164 t4; t4 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t5 Z; Z 0; Z

	t2; t3; bp t2; c164 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c172 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l446
	t1; t2; bp t1; c162 t1; t1 t2
	?+15; t2 Z; Z ?+8; Z
	dec Z; Z 0; Z

	Z Z l447
l446:
	t1; t2; bp t1; c164 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c171 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l444
	t1; t2; bp t1; c162 t1; t1 t2
	?+12; t2 Z; Z ?+5; Z; dec 0

	Z Z l445
l444:
	t3; t1; bp t3; c164 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c170 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l442
	t1; t2; bp t1; c161 t1; t1 t2
	t1; t3; bp t1; c162 t1; t1 t3
	t1; t4; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t4
	t3; t1; t2 t3; t4 t3; t3 t1
	?+15; t1 Z; Z ?+8; Z
	dec Z; Z 0; Z

	Z Z l443
l442:
	t2; t3; bp t2; c164 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c64 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l440
	t1; t2; bp t1; c161 t1; t1 t2
	t1; t3; bp t1; c162 t1; t1 t3
	t1; t4; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t4
	t3; t1; t2 t3; t4 t3; t3 t1
	?+12; t1 Z; Z ?+5; Z; dec 0

	Z Z l441
l440:
	t1; t2; bp t1; c164 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c169 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l438
	t1; t2; bp t1; c161 t1; t1 t2
	t1; t3; bp t1; c162 t1; t1 t3
	t1; t4; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t4
	t3; t1; t2 t3; t4 t3; t3 t1
	t3; t4; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _putchar; . ?;
	c1 sp

	Z Z l439
l438:
	t3; t1; bp t3; c164 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t2 Z; Z t1; Z; c168 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l436
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _getchar; . ?;
	t1; ax t1
	inc sp
	t2; t3; bp t2; c161 t2; t2 t3
	t2; t4; bp t2; c162 t2; t2 t4
	t2; t5; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t5
	t4; t2; t3 t4; t5 t4; t4 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	Z Z l437
l436:
	t1; t2; bp t1; c164 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c166 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	t3; Z t2 l434
	t1; t4; bp t1; c161 t1; t1 t4
	t1; t5; bp t1; c162 t1; t1 t5
	t1; t6; ?+11; t5 Z; Z ?+4; Z; 0 t1; t1 t6
	t5; t1; t4 t5; t6 t5; t5 t1
	t5; t6; ?+11; t1 Z; Z ?+4; Z; 0 t5; t5 t6
	t1; t6 Z; Z t1 ?+3; Z Z ?+9; Z; t6 t1; t6 t1
	Z t1 l434; inc t3;
l434:
	Z t3 l435
	t1; t2; bp t1; c165 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

l429:
	t1; t2; bp t1; c165 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c3 t2
	Z t2 l430
	t1; t2; bp t1; c157 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c163 t2; t2 t1
	t1 Z; ?+9; Z ?+5; Z; dec 0
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t1; bp t2; c164 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t4 Z; Z 0; Z

	t2; t3; bp t2; c164 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; c167 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l432
	t1; t2; bp t1; c165 t1; t1 t2
	t2 Z; ?+9; Z ?+5; Z; dec 0

	Z Z l433
l432:
	t1; t2; bp t1; c164 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c166 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l431
	t1; t2; bp t1; c165 t1; t1 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0

l431:
l433:

	Z Z l429
l430:

l435:
l437:
l439:
l441:
l443:
l445:
l447:

l427:
	t4; t2; bp t4; c163 t4; t4 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l426
l428:

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c67 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	?+8; sp ?+4; t6; 0 t6; inc sp
	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_outrep:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t1 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t2 0
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; t3 0

l448:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c7 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t3 Z; Z t1 ?+3; Z Z ?+9; Z; t3 t1; t3 t1
	Z t1 l449
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c62 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _putchar; . ?;
	c1 sp

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c7 t2; t2 t1
	t1 Z; ?+9; Z ?+5; Z; dec 0

	Z Z l448
l449:

	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_inchar:
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
	?+6; sp ?+2; ?+2 0 _getchar; . ?;
	t1; ax t1
	inc sp
	t2; t3; bp t2; dec t2; t2 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t2; t1; bp t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; c3 Z; Z t1; Z; t3 t1; inc t1
	Z t1 l450
	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l450:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_inchar

end_inchar:
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_outbf:
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
	t2; t1; t3 t2; c61 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c173 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

l_outbf_o1:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t4 t1; c62 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t3 Z; Z t2; Z; t4 t2; inc t2
	Z t2 l451
	Z Z l_outbf_o2
l451:

l_outbf_o3:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t4 t1; c61 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t1; t3 t2; t4 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t4 Z; Z 0; Z

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c61 t2; t2 t1
	t1 Z; ?+9; Z ?+5; Z; inc 0

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; c3 t2 ?+3; Z Z ?+15
	Z; t2 Z ?+9; Z; t2; inc t2
	Z t2 l452
	Z Z l_outbf_o3
l452:

	t1; t2; bp t1; c6 t1; t1 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0

	Z Z l_outbf_o1

l_outbf_o2:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t4 t1; c61 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t1; t3 t2; t4 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t4 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c3 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l453
	Z Z l_outbf_o4
l453:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; c174 t2 ?+3; Z Z ?+15
	Z; t2 Z ?+9; Z; t2; inc t2
	Z t2 l454
	Z Z l_outbf_o5
l454:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c22 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l_outbf_o5:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; c175 t2 ?+3; Z Z ?+15
	Z; t2 Z ?+9; Z; t2; inc t2
	Z t2 l455
	Z Z l_outbf_o6
l455:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c23 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

l_outbf_o6:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; c176 t2 ?+3; Z Z ?+15
	Z; t2 Z ?+9; Z; t2; inc t2
	Z t2 l456
	Z Z l_outbf_o7
l456:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c10 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	Z Z l_outbf_o11

l_outbf_o7:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; c177 t2 ?+3; Z Z ?+15
	Z; t2 Z ?+9; Z; t2; inc t2
	Z t2 l457
	Z Z l_outbf_o8
l457:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c8 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	Z Z l_outbf_o11

l_outbf_o8:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; c14 Z; Z t2; Z; t3 t2
	Z t2 l458
	Z Z l_outbf_o9
l458:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c15 t2
	Z t2 l459
	Z Z l_outbf_o9
l459:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c14 t2
	t3; t1; bp t3; dec t3; t3 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

l_outbf_o11:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t4 t1; c60 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l460
	Z Z l_outbf_o12
l460:

	t1; t2; bp t1; c6 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t4 t1; c60 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t3 Z; Z t2; Z; t4 t2
	t4; t3; bp t4; c1 t4; t4 t3
	t4; t1; ?+11; t3 Z; Z ?+4; Z; 0 t4; t4 t1
	t3; t4; t1 t3; c58 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

l_outbf_o14:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c58 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t4 Z; Z t2; Z; t3 t2; inc t2
	Z t2 l461
	Z Z l_outbf_o13
l461:

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c172 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _putchar; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0

	Z Z l_outbf_o14

l_outbf_o12:

	t1; t2; bp t1; c6 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c60 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; dec t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t3 Z; Z t2; Z; t4 t2
	t4; t3; bp t4; c1 t4; t4 t3
	t4; t1; ?+11; t3 Z; Z ?+4; Z; 0 t4; t4 t1
	t3; t4; t1 t3; c58 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

l_outbf_o16:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c58 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t4 Z; Z t2; Z; t3 t2; inc t2
	Z t2 l462
	Z Z l_outbf_o13
l462:

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c171 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _putchar; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0

	Z Z l_outbf_o16

l_outbf_o13:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t4 t1; c60 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	Z Z l_outbf_o10

l_outbf_o9:

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _putchar; . ?;
	c1 sp

l_outbf_o10:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c61 t2; t2 t1
	t1 Z; ?+9; Z ?+5; Z; inc 0

	Z Z l_outbf_o2

l_outbf_o4:

	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_ASM:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c180 sp
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

	t1; t2; bp t1; c180 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c179 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l463:
	t2; t1; bp t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; c181 Z; Z t1; Z; t3 t1
	Z t1 l465
	t2; t3; bp t2; c180 t2; t2 t3
	t2; t4; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t4
	t3; t2; bp t3; dec t3; t3 t2
	t3; t5; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t5
	t2; t3; t4 t2; t5 t2; t2 t3
	t2; t5; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t5
	t3; t2; bp t3; c6 t3; t3 t2
	t3; t4; bp t3; dec t3; t3 t4
	t3; t6; ?+11; t4 Z; Z ?+4; Z; 0 t3; t3 t6
	t4; t3; t6 t4; c53 t4; t4 t3
	t4; t6; t2 t4; t3 t4; t4 t6
	?+23; ?+21; ?+24; t6 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t5 Z; Z 0; Z

l464:
	t3; t2; bp t3; dec t3; t3 t2
	t2 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l463
l465:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c60 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c10 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c55 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c10 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c6 t3; t3 t1
	t3; t2; bp t3; c6 t3; t3 t2
	t3; t4; t2 t3; c8 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c11 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c12 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

l_ASM_Laa:

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _inchar; . ?;
	t1; ax t1
	inc sp
	t2; t3; bp t2; c6 t2; t2 t3
	t2; t4; t3 t2; c3 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c177 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l466
	Z Z l_ASM_Lab
l466:

l_ASM_Laj:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; c3 t3 ?+3; Z Z ?+15
	Z; t3 Z ?+9; Z; t3; inc t3
	Z t3 l467
	Z Z l_ASM_Lam
l467:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c6 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l468
	Z Z l_ASM_Lai
l468:

	Z Z l_ASM_Lab

l_ASM_Lam:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; c8 t3 ?+3; Z Z ?+15
	Z; t3 Z ?+9; Z; t3; inc t3
	t2; Z t3 l469
	t1; t4; bp t1; c6 t1; t1 t4
	t1; t5; t4 t1; c3 t1; t1 t5
	t1; t4; ?+11; t5 Z; Z ?+4; Z; 0 t1; t1 t4
	t5; t4 Z; Z t5; c11 t5 ?+3; Z Z ?+15
	Z; t5 Z ?+9; Z; t5; inc t5
	Z t5 l469; inc t2;
l469:
	t5; Z t2 l470
	t3; t4; bp t3; c6 t3; t3 t4
	t3; t1; t4 t3; c3 t3; t3 t1
	t3; t4; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t4
	t1; t4 Z; Z t1; c12 t1 ?+3; Z Z ?+15
	Z; t1 Z ?+9; Z; t1; inc t1
	Z t1 l470; inc t5;
l470:
	t1; Z t5 l471
	t2; t4; bp t2; c6 t2; t2 t4
	t2; t3; t4 t2; c3 t2; t2 t3
	t2; t4; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t4
	t3; t4 Z; Z t3; c9 t3 ?+3; Z Z ?+15
	Z; t3 Z ?+9; Z; t3; inc t3
	Z t3 l471; inc t1;
l471:
	Z t1 l472
	Z Z l_ASM_Lad
l472:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c6 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l473
	Z Z l_ASM_Lai
l473:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	Z Z l_ASM_Laa

l_ASM_Lad:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c23 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l475
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c182 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l474
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	Z Z l_ASM_Laa

l474:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c182 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c6 t3; t3 t1
	t3; t4; t1 t3; c7 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	Z Z l_ASM_Lai

l475:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c13 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	t2; inc t2; Z t3 ?+3; Z Z l476
	t1; t4; bp t1; c6 t1; t1 t4
	t1; t5; t4 t1; c3 t1; t1 t5
	t1; t4; ?+11; t5 Z; Z ?+4; Z; 0 t1; t1 t4
	t5; t4 Z; Z t5; Z; c10 t5 ?+3
	t5 t5 ?+9; t5 Z ?+3; Z Z ?+3; inc t5
	Z t5 ?+3; Z Z l476; t2;
l476:
	t5; inc t5; Z t2 ?+3; Z Z l477
	t3; t4; bp t3; c6 t3; t3 t4
	t3; t1; t4 t3; dec t3; t3 t1
	t3; t4; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t4
	t1; Z t4 ?+3; Z Z ?+9
	t4 Z ?+3; Z Z ?+3; inc t1
	Z t1 ?+3; Z Z l477; t5;
l477:
	Z t5 l478
	Z Z l_ASM_Laa
l478:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; c7 t3 ?+3; Z Z ?+15
	Z; t3 Z ?+9; Z; t3; inc t3
	Z t3 l479
	Z Z l_ASM_Lay
l479:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; c182 t3 ?+3; Z Z ?+15
	Z; t3 Z ?+9; Z; t3; inc t3
	Z t3 l480
	Z Z l_ASM_Laz
l480:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c23 Z; Z 0; Z

	Z Z l_ASM_Laa

l_ASM_Lay:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; c183 t3 ?+3; Z Z ?+15
	Z; t3 Z ?+9; Z; t3; inc t3
	Z t3 l481
	Z Z l_ASM_Lac
l481:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c6 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l482
	Z Z l_ASM_Lai
l482:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	Z Z l_ASM_Laa

l_ASM_Lac:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; dec t3 ?+3; Z Z ?+15
	Z; t3 Z ?+9; Z; t3; inc t3
	Z t3 l483
	Z Z l_ASM_Lae
l483:

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _inchar; . ?;
	t1; ax t1
	inc sp
	t2; t3; bp t2; c6 t2; t2 t3
	t2; t4; t3 t2; c6 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _inchar; . ?;
	t1; ax t1
	inc sp
	t2; t3; bp t2; c6 t2; t2 t3
	t2; t4; t3 t2; c7 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

l_ASM_Laf:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c53 t3; t3 t1
	t3; t2; bp t3; c6 t3; t3 t2
	t3; t4; t2 t3; c22 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; bp t1; c6 t1; t1 t3
	t1; t4; t3 t1; c22 t1; t1 t4
	t1; t3; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t3
	t4; t1; t2 t4; t3 t4; t4 t1
	t4; t3; ?+11; t1 Z; Z ?+4; Z; 0 t4; t4 t3
	t1; t4; bp t1; c6 t1; t1 t4
	t1; t2; t4 t1; c62 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c6 t3; t3 t1
	t3; t4; t1 t3; c62 t3; t3 t4
	t3; t1; ?+11; t4 Z; Z ?+4; Z; 0 t3; t3 t1
	t4; t2 Z; Z t4; t1 t4 ?+3; Z Z ?+15
	Z; t4 Z ?+9; Z; t4; inc t4
	Z t4 l484
	Z Z l_ASM_Lag
l484:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; bp t1; c6 t1; t1 t3
	t1; t4; t3 t1; c22 t1; t1 t4
	t1; t3; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t3
	t4; t1; t2 t4; t3 t4; t4 t1
	t4; t3; ?+11; t1 Z; Z ?+4; Z; 0 t4; t4 t3
	t1; t4; bp t1; c6 t1; t1 t4
	t1; t2; t4 t1; c62 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c6 t3; t3 t1
	t3; t4; t1 t3; c62 t3; t3 t4
	t3; t1; ?+11; t4 Z; Z ?+4; Z; 0 t3; t3 t1
	t4; t2 Z; Z t4; t1 t4 ?+3; Z Z ?+15
	Z; t4 Z ?+9; Z; t4; inc t4
	Z t4 l485
	Z Z l_ASM_Lag
l485:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; bp t1; c6 t1; t1 t3
	t1; t4; t3 t1; c22 t1; t1 t4
	t1; t3; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t3
	t4; t1; t2 t4; t3 t4; t4 t1
	t4; t3; ?+11; t1 Z; Z ?+4; Z; 0 t4; t4 t3
	t1; t4; bp t1; c6 t1; t1 t4
	t1; t2; t4 t1; c62 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c6 t3; t3 t1
	t3; t4; t1 t3; c62 t3; t3 t4
	t3; t1; ?+11; t4 Z; Z ?+4; Z; 0 t3; t3 t1
	t4; t2 Z; Z t4; Z; t1 t4 ?+3
	t4 t4 ?+9; t4 Z ?+3; Z Z ?+3; inc t4
	Z t4 l486
	Z Z l_ASM_Lah
l486:

l_ASM_Lag:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c184 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l487
	Z Z l_ASM_Laz
l487:

	Z Z l_ASM_Laf

l_ASM_Lah:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c6 Z; Z 0; Z

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c7 Z; Z 0; Z
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __div; . ?;
	t2; ax t2
	c2 sp
	t3; t1; bp t3; c6 t3; t3 t1
	t3; t4; t1 t3; c6 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	Z Z l_ASM_Laa

l_ASM_Lae:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; c185 t3 ?+3; Z Z ?+15
	Z; t3 Z ?+9; Z; t3; inc t3
	Z t3 l488
	Z Z l_ASM_Lax
l488:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c7 Z; Z 0; Z

	Z Z l_ASM_Laj

l_ASM_Lax:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; c186 t3 ?+3; Z Z ?+15
	Z; t3 Z ?+9; Z; t3; inc t3
	Z t3 l489
	Z Z l_ASM_Lak
l489:

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _inchar; . ?;
	t1; ax t1
	inc sp
	t2; t3; bp t2; c6 t2; t2 t3
	t2; t4; t3 t2; c3 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c174 t3
	t2; t1; bp t2; c6 t2; t2 t1
	t2; t4; t1 t2; c3 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c7 t3
	Z t3 l490
	Z Z l_ASM_Laz
l490:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c187 t3; t3 t1
	t3; t2; bp t3; c6 t3; t3 t2
	t3; t4; t2 t3; c23 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	Z Z l_ASM_Laa

l_ASM_Lak:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; c168 t3 ?+3; Z Z ?+15
	Z; t3 Z ?+9; Z; t3; inc t3
	Z t3 l491
	Z Z l_ASM_Lan
l491:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c6 t3; t3 t1
	t3; t4; t1 t3; c22 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	Z Z l_ASM_Laa

l_ASM_Lan:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; c169 t3 ?+3; Z Z ?+15
	Z; t3 Z ?+9; Z; t3; inc t3
	Z t3 l492
	Z Z l_ASM_Lal
l492:

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _inchar; . ?;
	t1; ax t1
	inc sp
	t2; t3; bp t2; c6 t2; t2 t3
	t2; t4; t3 t2; c7 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	Z Z l_ASM_Laa

l_ASM_Lal:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c18 t3
	t2; t1; bp t2; c6 t2; t2 t1
	t2; t4; t1 t2; c3 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c3 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c10 t3
	Z t3 l493
	Z Z l_ASM_Laz
l493:

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c8 Z; Z 0; Z
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mul; . ?;
	t2; ax t2
	c2 sp
	t3; t1; bp t3; c6 t3; t3 t1
	t3; t4; t1 t3; c7 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c6 t3; t3 t1
	t3; t4; t1 t3; c3 t3; t3 t4
	t3; t1; ?+11; t4 Z; Z ?+4; Z; 0 t3; t3 t1
	t4; t3; t2 t4; t1 t4; t4 t3
	t4; t1; bp t4; c6 t4; t4 t1
	t4; t2; t1 t4; c7 t4; t4 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	Z Z l_ASM_Laa

l_ASM_Lai:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3 ?+3; Z Z ?+9; Z; t2 t3; t2 t3
	t2; Z t3 l494
	t1; t4; bp t1; c6 t1; t1 t4
	t1; t5; t4 t1; c23 t1; t1 t5
	t1; t4; ?+11; t5 Z; Z ?+4; Z; 0 t1; t1 t4
	t5; t1; bp t5; c6 t5; t5 t1
	t5; t6; t1 t5; c22 t5; t5 t6
	t5; t1; ?+11; t6 Z; Z ?+4; Z; 0 t5; t5 t1
	t6; t4 Z; Z t6; Z; t1 t6 ?+3
	t6 t6 ?+9; t6 Z ?+3; Z Z ?+3; inc t6
	Z t6 l494; inc t2;
l494:
	Z t2 l495
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c188 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c189 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c6 t3; t3 t1
	t3; t4; t1 t3; c22 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c189 Z; Z 0; Z

l495:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c11 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	t2; Z t3 l496
	t1; t4; bp t1; c6 t1; t1 t4
	t1; t5; t4 t1; c6 t1; t1 t5
	t1; t4; ?+11; t5 Z; Z ?+4; Z; 0 t1; t1 t4
	t5; t4 Z; Z t5; c12 t5 ?+3; Z Z ?+15
	Z; t5 Z ?+9; Z; t5; inc t5
	Z t5 l496; inc t2;
l496:
	Z t2 l497
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c6 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c11 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

l497:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; Z t2 ?+3; Z Z ?+9
	t2 Z ?+3; Z Z ?+3; inc t3
	Z t3 l499
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; Z t2 ?+3; Z Z ?+9
	t2 Z ?+3; Z Z ?+3; inc t3
	Z t3 l498
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c23 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c6 t3; t3 t1
	t3; t4; t1 t3; c23 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c170 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outrep; . ?;
	c1 sp

	Z Z l_ASM_Lap

l498:

	Z Z l_ASM_Lao

l499:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c10 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l500
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c11 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c12 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	Z Z l_ASM_Lao

l500:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c8 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l501
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c11 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c12 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	Z Z l_ASM_Lao

l501:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c11 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l502
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c11 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c12 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	Z Z l_ASM_Lao

l502:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c12 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l504
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c11 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; Z t2 ?+3; Z Z ?+9
	t2 Z ?+3; Z Z ?+3; inc t3
	Z t3 l503
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c7 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

l503:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c11 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c23 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c190 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c170 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outrep; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c55 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	Z Z l_ASM_Lap

l504:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c57 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l506
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; Z t2 ?+3; Z Z ?+9
	t2 Z ?+3; Z Z ?+3; inc t3
	Z t3 l505
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c22 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c6 t3; t3 t1
	t3; t4; t1 t3; c23 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c170 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outrep; . ?;
	c1 sp

	Z Z l_ASM_Lap

l505:

	Z Z l_ASM_Lao

l506:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c191 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l508
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; Z t2 ?+3; Z Z ?+9
	t2 Z ?+3; Z Z ?+3; inc t3
	Z t3 l507
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c23 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c22 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; bp t3; c6 t3; t3 t1
	t3; t4; t1 t3; c23 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c64 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outrep; . ?;
	c1 sp

	Z Z l_ASM_Lap

l507:

	Z Z l_ASM_Lao

l508:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c192 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l509
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c11 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c12 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	Z Z l_ASM_Lao

l509:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c193 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l510
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c11 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c12 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	Z Z l_ASM_Lao

l510:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c13 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l511
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c6 Z; Z 0; Z
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mul; . ?;
	t2; ax t2
	c2 sp
	t3; t1; t2 t3; c55 t3; t3 t1
	t3; t2; bp t3; c6 t3; t3 t2
	t3; t4; t2 t3; c10 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	Z Z l_ASM_Lap

l511:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c194 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l512
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c6 Z; Z 0; Z
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mul; . ?;
	t2; ax t2
	c2 sp
	t3; t1; bp t3; c6 t3; t3 t1
	t3; t4; t1 t3; c10 t3; t3 t4
	t3; t1; ?+11; t4 Z; Z ?+4; Z; 0 t3; t3 t1
	t4; t3; t2 t4; t1 t4; t4 t3
	t4; t1; t3 t4; c6 t4; t4 t1
	t4; t3; bp t4; c6 t4; t4 t3
	t4; t2; t3 t4; c8 t4; t4 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	Z Z l_ASM_Lap

l512:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c182 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l514
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c23 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c177 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c170 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outrep; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c8 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c6 t3; t3 t1
	t3; t2; bp t3; c6 t3; t3 t2
	t3; t4; t2 t3; c8 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c23 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l513
	Z Z l_ASM_Laa
l513:

	Z Z l_ASM_Lap

l514:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; c195 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l515
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _putchar; . ?;
	c1 sp

	Z Z l_ASM_Lap

l515:

l_ASM_Lao:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; Z t2 ?+3; Z Z ?+9
	t2 Z ?+3; Z Z ?+3; inc t3
	Z t3 l516
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c23 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c23 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c189 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c170 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outrep; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0

l516:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c6 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c62 t3; t3 t1
	t3; t2; bp t3; c6 t3; t3 t2
	t3; t4; t2 t3; c62 t3; t3 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c7 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; Z t2 ?+3; Z Z ?+9
	t2 Z ?+3; Z Z ?+3; inc t3
	Z t3 l517
	Z Z l_ASM_Lap
l517:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c22 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

l_ASM_Lap:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; dec t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c12 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t2 Z; Z t3; Z; dec t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l518
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c7 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c12 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

l518:

	Z Z l_ASM_Laj

l_ASM_Laz:

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c185 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _putchar; . ?;
	c1 sp

	ax; c3 ax
	Z Z end_ASM

l_ASM_Lab:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c11 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; Z t2 ?+3; Z Z ?+9
	t2 Z ?+3; Z Z ?+3; inc t3
	t2; inc t2; Z t3 ?+3; Z Z l519
	t1; t4; bp t1; c6 t1; t1 t4
	t1; t5; t4 t1; c12 t1; t1 t5
	t1; t4; ?+11; t5 Z; Z ?+4; Z; 0 t1; t1 t4
	t5; t4 Z; Z t5; Z; dec t5 ?+3
	t5 t5 ?+9; t5 Z ?+3; Z Z ?+3; inc t5
	Z t5 ?+3; Z Z l519; t2;
l519:
	Z t2 l520
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c7 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

l520:

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c6 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c25 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c7 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; t2 t1; c62 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _outbf; . ?;
	c1 sp

	ax; c3 ax
	Z Z end_ASM

end_ASM:
	?+8; sp ?+4; t6; 0 t6; inc sp
	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_subleq:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c62 sp
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

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c7 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c23 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c22 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c62 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

l521:
	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c3 t2; inc t2
	Z t2 l522
	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c7 t2; t2 t1
	t2; t3; bp t2; c22 t2; t2 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; dec t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t1; bp t2; c6 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t4 Z; Z 0; Z

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; dec t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t4 t1; dec t1; t1 t2
	t1; t4; t3 t1; t2 t1; t1 t4
	t1; t2; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t2
	t4; t1; bp t4; c7 t4; t4 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; dec t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t4 t1; c6 t1; t1 t2
	t1; t4; t3 t1; t2 t1; t1 t4
	t1; t2; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t2
	t4; t1; bp t4; c23 t4; t4 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t2; t3; bp t2; c6 t2; t2 t3
	t2; t1; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t1
	t3; t1 Z; Z t3; Z; inc t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l526
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _getchar; . ?;
	t1; ax t1
	inc sp
	t2; t3; bp t2; c1 t2; t2 t3
	t2; t4; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t4
	t3; t2; bp t3; c7 t3; t3 t2
	t3; t5; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t5
	t2; t3; t4 t2; t5 t2; t2 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	Z Z l527
l526:
	t1; t2; bp t1; c7 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; inc t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l524
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c6 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _putchar; . ?;
	c1 sp

	Z Z l525
l524:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c6 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t2; t3 t1; t4 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t1; bp t2; c1 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c7 t1; t1 t2
	t1; t5; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t5
	t2; t1; t3 t2; t5 t2; t2 t1
	?+12; t1 Z; Z ?+5; Z; t4 0

	t3; t1; bp t3; c1 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	t1; t3; bp t1; c7 t1; t1 t3
	t1; t4; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t4
	t3; t1; t2 t3; t4 t3; t3 t1
	t3; t4; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t4
	t1; c3 Z; Z t1; Z; t4 t1; inc t1
	Z t1 l523
	t1; t2; bp t1; c23 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c22 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l523:

l525:
l527:

	t1; t2; bp t1; c22 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; dec t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	Z Z l521
l522:

	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_readInt:
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

	t1; t2; bp t1; dec t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z

	t1; t2; bp t1; c7 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; dec Z; Z 0; Z

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _getchar; . ?;
	t1; ax t1
	inc sp
	t2; t3; bp t2; dec t2; t2 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c64 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	t3; inc t3; Z t2 ?+3; Z Z l532
	t1; t4; bp t1; dec t1; t1 t4
	t1; t5; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t5
	t4; t5 Z; Z t4; Z; c170 t4 ?+3
	t4 t4 ?+9; t4 Z ?+3; Z Z ?+3; inc t4
	Z t4 ?+3; Z Z l532; t3;
l532:
	Z t3 l533
	t2; t1; bp t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t3 Z; Z t1; Z; c64 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l528
	t1; t2; bp t1; c7 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; inc Z; Z 0; Z
l528:

	Z Z l534
l533:
	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c19 t2
	t3; inc t3; Z t2 ?+3; Z Z l529
	t1; t4; bp t1; dec t1; t1 t4
	t1; t5; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t5
	t4; c18 Z; Z t4; Z; t5 t4
	Z t4 ?+3; Z Z l529; t3;
l529:
	Z t3 l530
	Z Z l531
l530:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c8 Z; Z 0; Z
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mul; . ?;
	t3; ax t3
	c2 sp
	t2; t1; bp t2; c6 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c18 t2
	t3; t1; bp t3; c6 t3; t3 t1
	?+15; t1 Z; Z ?+8; Z
	t2 Z; Z 0; Z

l531:

l534:

l535:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _getchar; . ?;
	t1; ax t1
	inc sp
	t2; t3; bp t2; dec t2; t2 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z
	t3; t1 Z; Z t3; c8 t3 ?+3; Z Z ?+15
	Z; t3 Z ?+9; Z; t3; inc t3
	Z t3 l536
	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c19 t2
	t3; inc t3; Z t2 ?+3; Z Z l537
	t1; t4; bp t1; dec t1; t1 t4
	t1; t5; ?+11; t4 Z; Z ?+4; Z; 0 t1; t1 t5
	t4; c18 Z; Z t4; Z; t5 t4
	Z t4 ?+3; Z Z l537; t3;
l537:
	Z t3 l538
	Z Z l539
l538:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c8 Z; Z 0; Z
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mul; . ?;
	t3; ax t3
	c2 sp
	t2; t1; bp t2; c6 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	t1; t2; bp t1; dec t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t3 Z; Z t2; Z; c18 t2
	t3; t1; bp t3; c6 t3; t3 t1
	?+15; t1 Z; Z ?+8; Z
	t2 Z; Z 0; Z

l539:

	Z Z l535
l536:

	t1; t2; bp t1; c7 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	t3; t2; bp t3; c6 t3; t3 t2
	t3; t1; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t1
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 __mul; . ?;
	t1; ax t1
	c2 sp
	t2; t3; bp t2; c6 t2; t2 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end_readInt

end_readInt:
	?+8; sp ?+4; t5; 0 t5; inc sp
	?+8; sp ?+4; t4; 0 t4; inc sp
	?+8; sp ?+4; t3; 0 t3; inc sp
	?+8; sp ?+4; t2; 0 t2; inc sp
	?+8; sp ?+4; t1; 0 t1; inc sp
	sp; bp sp
	?+8; sp ?+4; bp; 0 bp; inc sp
	?+8; sp ?+4; ?+7; 0 ?+3; Z Z 0

_main:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c226 sp
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
	?+9; sp ?+5; c197 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c199 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c201 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c203 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c205 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c207 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c209 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

l540:
	t1; dec Z; Z t1 ?+3; Z Z ?+9; Z; dec t1; dec t1
	Z t1 l541
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c211 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; dec t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _gets; . ?;
	t2; ax t2
	c1 sp
	t1; t3; bp t1; c212 t1; t1 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t2 Z; Z 0; Z

	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; t3 Z; Z t2; Z; c23 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l546
	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c3 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c77 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l545
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c141 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l544
	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c6 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c127 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l543
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c7 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c140 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l542
	Z Z l541

l542:
l543:
l544:
l545:
l546:

	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c7 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l550
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c79 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l549
	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; dec t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c113 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l548
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c6 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c101 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l547
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _cls; . ?;
	inc sp

l547:
l548:
l549:
l550:

	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c22 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l556
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c25 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l555
	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; dec t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c142 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l554
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c6 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c100 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l553
	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c7 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c113 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l552
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c23 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c113 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l551
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _NULL; . ?;
	t1; ax t1
	inc sp
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t1 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c67 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

l551:
l552:
l553:
l554:
l555:
l556:

	t2; t3; bp t2; c212 t2; t2 t3
	t2; t4; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t4; ax t4
	c1 sp
	t3; t4 Z; Z t3; Z; c23 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l561
	t2; t4; bp t2; c212 t2; t2 t4
	t2; t3; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t3
	t4; t2; t3 t4; c3 t4; t4 t2
	t4; t3; ?+11; t2 Z; Z ?+4; Z; 0 t4; t4 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t2; t3 Z; Z t2; Z; c79 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l560
	t2; t3; bp t2; c212 t2; t2 t3
	t2; t4; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t4
	t3; t2; t4 t3; dec t3; t3 t2
	t3; t4; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2; Z; c16 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l559
	t2; t4; bp t2; c212 t2; t2 t4
	t2; t3; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t3
	t4; t2; t3 t4; c6 t4; t4 t2
	t4; t3; ?+11; t2 Z; Z ?+4; Z; 0 t4; t4 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t2; t3 Z; Z t2; Z; c113 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l558
	t2; t3; bp t2; c212 t2; t2 t3
	t2; t4; ?+11; t3 Z; Z ?+4; Z; 0 t2; t2 t4
	t3; t2; t4 t3; c7 t3; t3 t2
	t3; t4; ?+11; t2 Z; Z ?+4; Z; 0 t3; t3 t4
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t4 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t4; ax t4
	c1 sp
	t2; t4 Z; Z t2; Z; c79 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l557
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _calc; . ?;
	inc sp
l557:
l558:
l559:
l560:
l561:

	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; t3 Z; Z t2; Z; c23 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l566
	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c3 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c77 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l565
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c78 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l564
	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c6 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c127 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l563
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c7 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c140 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l562
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c67 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; dec t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _edit; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c67 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

l562:
l563:
l564:
l565:
l566:

	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; t3 Z; Z t2; Z; c6 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l569
	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c3 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c113 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l568
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c101 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l567
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c214 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c216 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c67 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

l567:
l568:
l569:

	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c7 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l573
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c77 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l572
	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; dec t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c65 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l571
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c6 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c113 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l570
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _EPL; . ?;
	inc sp

l570:
l571:
l572:
l573:

	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t2; ax t2
	c1 sp
	t3; t2 Z; Z t3; Z; c7 t3 ?+3
	t3 t3 ?+9; t3 Z ?+3; Z Z ?+3; inc t3
	Z t3 l577
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c3 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c16 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l576
	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; dec t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c101 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l575
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c6 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c114 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l574
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c218 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c220 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _ASM; . ?;
	inc sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c67 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

l574:
l575:
l576:
l577:

	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _strlen; . ?;
	t3; ax t3
	c1 sp
	t2; t3 Z; Z t2; Z; c62 t2 ?+3
	t2 t2 ?+9; t2 Z ?+3; Z Z ?+3; inc t2
	Z t2 l587
	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c3 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c101 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l586
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; dec t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c100 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l585
	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c6 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c80 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l584
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c7 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c113 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l583
	t1; t3; bp t1; c212 t1; t1 t3
	t1; t2; ?+11; t3 Z; Z ?+4; Z; 0 t1; t1 t2
	t3; t1; t2 t3; c23 t3; t3 t1
	t3; t2; ?+11; t1 Z; Z ?+4; Z; 0 t3; t3 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t2; ax t2
	c1 sp
	t1; t2 Z; Z t1; Z; c77 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l582
	t1; t2; bp t1; c212 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; t3 t2; c22 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _upper; . ?;
	t3; ax t3
	c1 sp
	t1; t3 Z; Z t1; Z; c231 t1 ?+3
	t1 t1 ?+9; t1 Z ?+3; Z Z ?+3; inc t1
	Z t1 l581
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c222 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c224 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _readInt; . ?;
	t1; ax t1
	inc sp
	t2; t3; bp t2; c225 t2; t2 t3
	?+23; ?+21; ?+24; t3 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

	t1; t2; bp t1; c226 t1; t1 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; c3 Z; Z 0; Z
l578:
	t2; t1; bp t2; c226 t2; t2 t1
	t2; t3; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t3
	t1; t2; bp t1; c225 t1; t1 t2
	t1; t4; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t4
	t2; t4 Z; Z t2; Z; t3 t2
	Z t2 l580
	t3; t4; bp t3; c225 t3; t3 t4
	t3; t1; ?+11; t4 Z; Z ?+4; Z; 0 t3; t3 t1
	t4; t3; bp t4; c226 t4; t4 t3
	t4; t5; ?+11; t3 Z; Z ?+4; Z; 0 t4; t4 t5
	t3; t1 Z; Z t3; Z; t5 t3
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t3 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c228 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _printf; . ?;
	c2 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _readInt; . ?;
	t1; ax t1
	inc sp
	t2; t3; bp t2; c38 t2; t2 t3
	t2; t4; bp t2; c226 t2; t2 t4
	t2; t5; ?+11; t4 Z; Z ?+4; Z; 0 t2; t2 t5
	t4; t2; t3 t4; t5 t4; t4 t2
	?+23; ?+21; ?+24; t2 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t1 Z; Z 0; Z

l579:
	t4; t3; bp t4; c226 t4; t4 t3
	t3 Z; ?+9; Z ?+5; Z; inc 0
	Z Z l578
l580:

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c230 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

	t1; t2; bp t1; c38 t1; t1 t2
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; t2 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _subleq; . ?;
	c1 sp

	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+9; sp ?+5; c67 Z; Z 0; Z
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; ?+2 0 _puts; . ?;
	c1 sp

l581:
l582:
l583:
l584:
l585:
l586:
l587:

	Z Z l540
l541:

	?+8; sp ?+4; t5; 0 t5; inc sp
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
	Z t2 l588
	c64 (-1)

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

l588:

	t2; t1; bp t2; c1 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t4 Z; Z t1; Z; c3 t1
	Z t1 l589
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
l589:

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
	Z t2 l590
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

l590:

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; c3 Z; Z t2; Z; t3 t2
	Z t2 l591
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

l591:

	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; t4 Z; Z t1; Z; t3 t1
	Z t1 l592
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

l592:

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
	Z t1 l593
	t1; t2; bp t1; c7 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end__mul
l593:

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
	Z t2 l594
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

l594:

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; c3 Z; Z t2; Z; t3 t2
	Z t2 l595
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

l595:

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; dec Z; Z t2; Z; t3 t2
	Z t2 l596
	ax; c3 ax
	Z Z end__div
l596:

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
	Z t1 l597
	t1; t2; bp t1; c7 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end__div
l597:

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
	Z t2 l598
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

l598:

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; c3 Z; Z t2; Z; t3 t2
	Z t2 l599
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

l599:

	t1; t2; bp t1; c2 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; dec Z; Z t2; Z; t3 t2
	Z t2 l600
	ax; c3 ax
	Z Z end__mod
l600:

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
	Z t1 l601
	t1; t2; bp t1; c6 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end__mod
l601:

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
	Z t2 l602
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

l602:

	ax; c3 ax
	Z Z end__putintr

end__putintr:
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
	Z t2 l603
	ax; c3 ax
	Z Z end__multr
l603:

	t2; t1; bp t2; c2 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	t1; c6 Z; Z t1; Z; t4 t1
	Z t1 l604
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	ax; t3 ax
	Z Z end__multr
l604:

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
	Z t1 l605
	Z Z l606
l605:
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c7 t2; t2 t1
	?+23; ?+21; ?+24; t1 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z
l606:

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

__divMod:
	dec sp; ?+11; sp ?+7; ?+6; sp ?+2; 0
	?+6; sp ?+2; bp 0
	bp; sp bp
	c23 sp
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
	Z t1 l607
	t1; t2; bp t1; c1 t1; t1 t2
	t1; t3; ?+11; t2 Z; Z ?+4; Z; 0 t1; t1 t3
	t2; t1; bp t2; c21 t2; t2 t1
	t2; t4; ?+11; t1 Z; Z ?+4; Z; 0 t2; t2 t4
	?+23; ?+21; ?+24; t4 Z; Z ?+10; Z ?+8
	Z ?+11; Z; 0; t3 Z; Z 0; Z

	ax; c3 ax
	Z Z end__divMod

l607:

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
	t2; t1; bp t2; c23 t2; t2 t1
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
	Z t5 l608
	t1; t2; bp t1; c23 t1; t1 t2
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
l608:

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

. c1:-2 c2:-3 c21:-4 c88:-5 c3:0 c8:10 c66:10 0 c26:100 c190:101 c187:102 c24:1025 c157:1048577 c161:1048578 c27:105 c189:106 c63:107520 c39:10753 c204:108 97 110 103 117 97 103 101 32 119 105 116 104 32 111 110 108 121 32 79 78 69 32 105 110 115 116 114 117 99 116 105 111 110 44 32 83 85 66 76 69 81 46 32 70 111 114 32 112 114 111 103 114 97 109 32 108 105 115 116 32 116 121 112 101 32 34 108 115 34 46 10 0 c11:11 c200:110 101 101 100 115 32 98 101 99 97 117 115 101 32 116 104 105 115 32 105 115 32 109 121 32 102 105 114 115 116 32 115 116 101 112 32 98 101 102 111 114 101 32 83 85 66 76 69 81 32 99 111 109 112 105 108 101 114 46 10 0 c30:1103515245 c184:111 c160:1114114 c164:1114115 c163:1114116 c165:1114117 c162:1114118 c186:114 c28:115 c12:12 c15:122 c31:12345 c20:126 c9:13 c173:131 c59:14 c40:14337 c58:15 c212:15361 c225:15362 c226:15363 c35:1537 c57:16 c56:17 c55:18 c41:18433 c54:19 c181:1900 c6:2 c53:20 c180:2002 c188:22 c42:23041 c195:26 c191:27 c43:28161 c7:3 c192:30 c36:3073 c193:31 c13:32 c86:32 35 47 67 65 76 67 47 65 68 68 32 82 101 115 117 108 116 58 32 37 100 32 102 111 114 32 65 61 37 100 32 97 110 100 32 66 61 37 100 10 0 c71:32 35 47 67 65 76 67 47 65 68 68 47 65 62 32 0 c82:32 35 47 67 65 76 67 47 65 68 68 47 66 62 32 0 c124:32 35 47 67 65 76 67 47 68 73 86 32 82 101 115 117 108 116 58 32 37 100 32 102 111 114 32 65 61 37 100 32 97 110 100 32 66 61 37 100 10 0 c115:32 35 47 67 65 76 67 47 68 73 86 47 65 62 32 0 c120:32 35 47 67 65 76 67 47 68 73 86 47 66 62 32 0 c137:32 35 47 67 65 76 67 47 77 79 68 32 82 101 115 117 108 116 58 32 37 100 32 102 111 114 32 65 61 37 100 32 97 110 100 32 66 61 37 100 10 0 c128:32 35 47 67 65 76 67 47 77 79 68 47 65 62 32 0 c133:32 35 47 67 65 76 67 47 77 79 68 47 66 62 32 0 c111:32 35 47 67 65 76 67 47 77 85 76 32 82 101 115 117 108 116 58 32 37 100 32 102 111 114 32 65 61 37 100 32 97 110 100 32 66 61 37 100 10 0 c102:32 35 47 67 65 76 67 47 77 85 76 47 65 62 32 0 c107:32 35 47 67 65 76 67 47 77 85 76 47 66 62 32 0 c98:32 35 47 67 65 76 67 47 83 85 66 32 82 101 115 117 108 116 58 32 37 100 32 102 111 114 32 65 61 37 100 32 97 110 100 32 66 61 37 100 10 0 c89:32 35 47 67 65 76 67 47 83 85 66 47 65 62 32 0 c94:32 35 47 67 65 76 67 47 83 85 66 47 66 62 32 0 c68:32 35 47 67 65 76 67 62 32 0 c155:32 35 47 69 80 76 47 67 79 68 69 62 32 0 c158:32 35 47 69 80 76 47 79 85 84 80 85 84 32 45 62 32 0 c210:32 35 62 32 0 c215:32 45 32 69 88 73 84 32 38 32 76 83 10 32 45 32 37 78 85 76 76 10 32 45 32 67 65 76 67 92 10 32 45 32 69 68 73 84 92 10 32 45 32 69 80 76 92 10 32 45 32 65 83 77 92 10 32 45 32 83 85 66 76 69 81 92 10 0 c32:32768 c194:33 c44:33793 c182:34 c185:35 c217:35 47 65 83 77 50 69 80 76 10 0 c219:35 47 65 83 77 50 69 80 76 47 67 79 68 69 58 73 79 32 86 62 58 32 10 0 c143:35 47 67 65 76 67 47 65 32 61 62 32 37 100 0 c145:35 47 67 65 76 67 47 66 32 61 62 32 37 100 0 c147:35 47 67 65 76 67 47 67 32 61 62 32 37 100 0 c149:35 47 67 65 76 67 47 68 32 61 62 32 37 100 0 c151:35 47 67 65 76 67 47 69 32 61 62 32 37 100 0 c153:35 47 67 65 76 67 47 70 32 61 62 32 37 100 0 c221:35 47 83 85 66 76 69 81 10 0 c227:35 47 83 85 66 76 69 81 47 67 79 68 69 124 69 78 84 69 82 58 37 68 32 77 79 82 69 62 32 0 c223:35 47 83 85 66 76 69 81 47 67 79 68 69 58 83 73 90 69 62 32 0 c229:35 47 83 85 66 76 69 81 47 85 83 69 82 58 73 79 62 32 10 0 c25:37 c45:39937 c23:4 c4:40 78 85 76 76 41 0 c176:42 c170:43 c168:44 c64:45 c169:46 c46:46593 c18:48 c174:49 c22:5 c175:50 c37:5121 c34:513 c47:53761 c19:57 c183:59 c62:6 c171:60 c48:61441 c172:62 c16:65 c33:65536 c80:66 c79:67 c78:68 c77:69 c49:69633 c61:7 c76:70 c127:73 c202:73 102 32 121 111 117 32 119 97 110 116 32 116 111 32 107 110 111 119 44 32 105 116 32 119 97 115 32 102 117 110 32 116 111 32 119 114 105 116 101 32 116 104 105 115 32 105 110 32 83 85 66 76 69 81 32 45 32 112 114 111 103 114 97 109 109 105 110 103 10 0 c113:76 c213:76 105 115 116 105 110 103 32 102 111 114 58 32 35 10 0 c38:7681 c70:7682 c75:7683 c73:7689 c74:7690 c81:7691 c84:7692 c85:7693 c91:7694 c92:7695 c93:7696 c96:7697 c97:7698 c104:7699 c114:77 c105:7700 c106:7701 c109:7702 c110:7703 c117:7704 c118:7705 c119:7706 c122:7707 c123:7708 c130:7709 c131:7710 c132:7711 c135:7712 c136:7713 c142:78 c50:78337 c139:79 c60:8 c65:80 c231:81 c101:83 c196:83 105 109 112 108 101 32 69 115 115 101 110 116 105 97 108 115 32 118 32 49 46 48 46 32 67 111 112 121 114 105 103 104 116 32 40 67 41 32 98 121 32 75 114 122 121 115 122 116 111 102 32 83 122 101 119 99 122 121 107 32 50 48 49 55 45 50 48 49 56 10 0 c208:83 116 114 101 97 109 115 32 97 114 101 32 109 97 114 107 101 100 32 119 105 116 104 32 37 44 32 101 103 46 32 37 78 85 76 44 32 100 105 114 101 99 116 111 114 105 101 115 32 97 114 101 32 109 97 114 107 101 100 32 119 105 116 104 10 115 108 97 115 104 32 97 116 32 101 110 100 44 32 101 103 46 32 67 65 76 67 92 46 32 82 111 111 116 32 100 105 114 32 105 115 32 109 97 114 107 101 100 32 119 105 116 104 32 35 46 10 80 97 116 104 32 115 101 112 97 114 97 116 111 114 115 32 99 97 110 32 98 101 32 117 115 101 100 32 97 115 32 92 32 97 110 100 32 47 46 10 10 0 c140:84 c198:84 104 105 115 32 99 111 100 101 32 119 97 115 110 39 116 32 105 110 116 101 110 100 101 100 32 102 111 114 32 115 112 101 101 100 32 111 114 32 97 32 108 111 116 32 111 102 32 117 115 101 32 102 111 114 32 105 116 44 32 106 117 115 116 32 101 100 117 99 97 116 105 111 110 97 108 10 0 c100:85 c126:86 c51:87553 c141:88 c206:89 111 117 32 99 97 110 32 101 120 105 116 32 102 114 111 109 32 97 110 121 32 112 108 97 99 101 32 117 115 105 110 103 32 69 88 73 84 32 97 110 100 32 108 105 115 116 32 102 105 108 101 115 32 117 115 105 110 103 32 76 83 46 10 0 c10:9 c17:90 c167:91 c166:93 c177:94 c14:97 c178:97 100 100 97 110 100 100 101 99 100 105 118 101 113 95 103 101 95 103 116 95 105 110 95 105 110 99 106 109 112 106 110 122 106 122 95 108 98 108 108 101 95 108 116 95 109 111 100 109 111 118 109 117 108 110 101 95 110 101 103 110 111 116 111 114 95 111 117 116 112 111 112 112 115 104 114 99 108 115 116 111 115 117 98 115 119 112 99 108 114 114 101 116 101 110 100 115 116 107 111 114 103 100 98 95 116 120 116 114 97 119 97 43 98 43 91 0 98 93 0 97 91 99 43 100 43 97 45 93 99 91 97 43 99 45 93 100 91 91 45 93 0 100 93 2 2 91 45 93 2 91 49 43 101 43 50 45 93 101 91 50 43 101 45 93 1 91 101 43 49 45 93 101 91 101 91 45 93 50 91 101 43 100 43 50 45 93 100 91 50 43 100 45 93 101 91 49 45 101 91 45 93 93 93 2 45 1 91 99 43 49 45 93 99 91 50 91 100 43 101 43 50 45 93 101 91 50 43 101 45 93 100 91 101 43 99 45 91 101 91 45 93 107 43 99 45 93 107 91 99 43 107 45 93 101 91 100 45 91 49 45 100 91 45 93 93 43 101 45 93 100 45 93 49 43 99 93 1 91 100 43 49 45 93 43 50 91 100 45 99 43 50 45 93 99 91 50 43 99 45 93 100 91 49 45 100 91 45 93 93 1 91 100 43 49 45 93 43 50 91 99 43 107 43 101 43 50 45 93 101 91 50 43 101 45 93 107 91 100 91 108 43 101 43 100 45 93 101 91 100 43 101 45 93 43 108 91 99 45 100 45 101 45 108 91 45 93 93 101 91 107 91 45 93 43 101 45 93 107 45 93 99 91 49 45 99 91 45 93 93 100 91 45 93 1 91 100 43 49 45 93 50 91 99 43 107 43 101 43 50 45 93 101 91 50 43 101 45 93 107 91 100 91 108 43 101 43 100 45 93 101 91 100 43 101 45 93 43 108 91 99 45 100 45 101 45 108 91 45 93 93 101 91 107 91 45 93 43 101 45 93 107 45 93 100 91 49 43 100 91 45 93 93 99 91 45 93 2 44 2 43 0 97 91 45 93 98 91 45 93 50 91 98 43 99 43 50 45 93 99 91 50 43 99 45 93 1 91 99 43 100 43 49 45 93 99 91 49 43 99 45 93 100 91 97 91 45 93 98 91 45 93 50 91 98 43 99 43 50 45 93 99 91 50 43 99 45 93 100 91 45 93 93 0 100 43 49 91 100 91 45 93 99 43 49 45 93 99 91 49 43 99 45 93 100 91 97 91 45 93 98 91 45 93 50 91 98 43 99 43 50 45 93 99 91 50 43 99 45 93 100 91 45 93 93 0 99 43 97 91 99 45 100 43 97 45 93 100 91 97 43 100 45 93 99 91 45 100 43 98 91 101 45 99 43 98 45 93 99 91 98 43 99 45 93 101 91 100 45 101 91 45 93 93 100 91 97 43 100 45 93 99 93 101 91 45 93 1 91 100 43 49 45 93 43 50 91 99 43 107 43 101 43 50 45 93 101 91 50 43 101 45 93 107 91 100 91 108 43 101 43 100 45 93 101 91 100 43 101 45 93 43 108 91 99 45 100 45 101 45 108 91 45 93 93 101 91 107 91 45 93 43 101 45 93 107 45 93 100 91 49 45 100 91 45 93 93 99 91 45 93 1 91 100 43 49 45 93 50 91 99 43 107 43 101 43 50 45 93 101 91 50 43 101 45 93 107 91 100 91 108 43 101 43 100 45 93 101 91 100 43 101 45 93 43 108 91 99 45 100 45 101 45 108 91 45 93 93 101 91 107 91 45 93 43 101 45 93 107 45 93 99 91 49 43 99 91 45 93 93 100 91 45 93 1 91 107 43 49 45 93 50 91 108 43 101 43 50 45 93 101 91 50 43 101 45 93 107 91 45 62 62 43 60 45 91 62 93 62 91 91 60 43 62 45 93 62 62 62 43 60 93 60 60 60 60 93 112 91 45 93 109 91 49 43 109 45 93 108 91 45 93 1 91 45 93 50 91 49 43 101 43 50 45 93 101 91 50 43 101 45 93 1 91 100 43 49 45 93 100 91 50 91 49 43 101 43 50 45 93 101 91 50 43 101 45 93 100 45 93 1 91 100 43 49 45 93 50 91 100 45 101 43 50 45 93 101 91 50 43 101 45 93 100 91 49 43 100 91 45 93 93 2 91 101 45 50 45 93 101 91 50 43 101 45 93 2 45 91 101 45 50 45 93 101 91 50 43 101 45 93 1 91 101 43 49 45 93 101 91 49 45 101 91 45 93 93 50 91 101 43 100 43 50 45 93 100 91 50 43 100 45 93 101 91 49 91 45 93 45 101 91 45 93 93 2 46 2 91 45 93 113 91 45 93 62 91 62 62 93 60 60 45 62 91 60 60 60 91 60 60 93 62 43 62 91 62 62 93 62 45 93 60 60 60 91 60 60 93 62 91 50 43 113 45 93 2 91 101 43 113 43 50 45 93 101 91 50 43 101 45 93 113 62 91 62 62 93 43 60 60 91 60 60 93 62 91 62 91 62 62 93 60 43 60 91 60 60 93 62 45 93 1 91 45 93 50 91 101 43 111 43 42 62 43 60 50 45 93 101 91 50 43 101 45 93 42 62 91 91 62 62 93 43 91 60 60 93 62 62 45 93 43 91 62 62 93 60 91 60 91 60 60 93 62 43 49 43 42 62 91 62 62 93 60 45 93 60 91 60 60 93 62 91 62 91 62 62 93 60 43 60 91 60 60 93 62 45 93 62 91 62 62 93 60 60 91 45 60 60 93 62 1 91 101 43 42 62 43 60 49 45 93 101 91 49 43 101 45 93 50 91 101 43 42 43 50 45 93 101 91 50 43 101 45 93 42 62 91 91 62 62 93 43 91 60 60 93 62 62 45 93 43 91 62 62 93 60 91 45 93 60 91 60 60 93 62 91 62 91 62 62 93 60 43 60 91 60 60 93 62 45 93 62 91 62 62 93 60 60 91 45 60 60 93 62 2 91 49 45 101 43 50 45 93 101 91 50 43 101 45 93 1 91 101 43 49 45 93 50 91 49 43 50 45 93 101 91 50 43 101 45 93 2 91 45 93 0 97 91 45 93 98 91 45 93 113 91 45 93 62 91 62 62 93 60 60 45 62 91 60 60 60 91 60 60 93 62 43 62 91 62 62 93 62 45 93 60 60 60 91 60 60 93 62 91 98 43 113 45 93 0 97 91 45 93 98 91 45 93 0 0 c52:97281 c29:99 c103:c102 c108:c107 c112:c111 c116:c115 c121:c120 c125:c124 c129:c128 c134:c133 c138:c137 c144:c143 c146:c145 c148:c147 c150:c149 c152:c151 c154:c153 c156:c155 c159:c158 c179:c178 c197:c196 c199:c198 c201:c200 c203:c202 c205:c204 c207:c206 c209:c208 c211:c210 c214:c213 c216:c215 c218:c217 c220:c219 c222:c221 c224:c223 c228:c227 c230:c229 c5:c4 c67:c66 c69:c68 c72:c71 c83:c82 c87:c86 c90:c89 c95:c94 c99:c98

. t1:0 t2:0 t3:0 t4:0 t5:0 t6:0 t7:0

. inc:-1 Z:0 dec:1 ax:0 bp:0 sp:-sp
