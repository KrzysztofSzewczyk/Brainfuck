#include <stdio.h>
int main() {
	int c,l=0,a=0;
	printf("#include<conio.h>\n#define W while(*p){\n#define G *p=getch()\n#define P putchar(*p)\nunsigned int t[30000];unsigned int p=t;int main(){");
	while((c=getchar())!=EOF) {
		if(c==l)a++;
		else switch(l) {
				case '>':
					printf("p+=%d;",a+1);
					a=0;
					break;
				case '<':
					printf("p-=%d;",a+1);
					a=0;
					break;
				case '+':
					printf("*p+=%d;",a+1);
					a=0;
					break;
				case '-':
					printf("*p-=%d;",a+1);
					a=0;
					break;
				case '.':
					a+=2;
					while(--a)printf("P;");
					break;
				case ',':
					a+=2;
					while(--a)printf("G;");
					break;
				case '[':
					a+=2;
					while(--a)printf("W;");
					break;
				case ']':
					a+=2;
					while(--a)printf("}");
					break;
				case '@':
					goto l1;
					break;
			}
		l=c;
	}
l1:
	printf("return 0;}");
}
