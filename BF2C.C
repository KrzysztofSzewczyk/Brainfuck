//This code was derived from KrzysztofSzewczyk
// / Obfuscated repository.

#include<stdio.h> //Made by Krzysztof Szewczyk
#include<string.h>//Poland,  2017-12-08  16:00
int d(char*s){int r=0;for(int i=0;i<strlen(s);
i++){s[i]+=r;if(r==8)r^=r;r++;}}int main(){int
c,l=0;int a=0;char b[]="#hl`hp^^4bmkej(a6	!aa"
"acg]Uscce]'(m%v\\ddfj`@)n:c`n\\`''__"
"_amcLjnlbf^n#$i!	skodag]cfjomS2.-,+W4mmq"
"fci_]hlq%6l:gkpgZam&&w";d(b);printf(b);//
while((c=getchar()) != EOF) {if(c==l)a++;else
switch(l) {case '>':printf("p+=%d;", a+1);a=0;
break;case '<':printf("p-=%d;",a+1);a=0;break;
case '+':printf("*p+=%d;", a+1);a=0;break;case
'-':printf("*p-=%d;",a+1);a = 0;break;case'.':
a += 2;while(--a) printf("P;"); break;case',':
a+=2;while(--a)printf("G;");break;case'[':a+=2
;while(--a) printf("W;"); break;case ']':a+=2;
while(--a) printf("}");break;case '@':goto l1;
break;}; l = c;}l1: printf("return 0;}/**/");}
