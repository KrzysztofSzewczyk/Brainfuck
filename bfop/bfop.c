#define CS unsigned char
#define CA 30000
#include <stdio.h>

unsigned char v1[30000] = {0};
unsigned char* ptr = v1;

// variable v8 function f2

void f2(unsigned char* input) {
    char current_char;
    size_t i;
    size_t loop;

    for (i = 0; input[i] != 0; i++) {
        current_char = input[i];
        if (current_char == '>') {
            ++ptr;
        } else if (current_char == '<') {
            --ptr;
        } else if (current_char == '+') {
            ++*ptr;
        } else if (current_char == '-') {
            --*ptr;
        } else if (current_char == '.' ) {
            putchar(*ptr);
        } else if (current_char == ',') {
            *ptr = getchar();
        } else if (current_char == '[') {
            continue;
        } else if (current_char == ']' && *ptr) {
            loop = 1;
            while (loop > 0) {
                current_char = input[--i];
                if (current_char == '[') {
                    loop--;
                } else if (current_char == ']') {
                    loop++;
                }
            }
        } else if (current_char == '$'){
			unsigned char v6[3]; v6[0]=input[i+1],v6[1]=input[i+2],v6[2]=input[i+3]; i += 3;
			int v5 = atoi(v6);
			*ptr+=v5;
		} else if (current_char == '&'){
			exit(((CA/(CA/2))>>1));
		} else if (current_char == '#'){
			unsigned char v6[3]; v6[0]=input[i+1],v6[1]=input[i+2],v6[2]=input[i+3]; i += 3;
			int v5 = atoi(v6);
			*ptr-=v5;
		} else if (current_char == '@'){
			unsigned char v6[3]; v6[0]=input[i+1],v6[1]=input[i+2],v6[2]=input[i+3]; i += 3;
			int v5 = atoi(v6);
			ptr+=v5;
		} else if (current_char == '!'){
			unsigned char v6[3]; v6[0]=input[i+1],v6[1]=input[i+2],v6[2]=input[i+3]; i += 3;
			int v5 = atoi(v6);
			ptr+=v5;
		} else if (current_char == '*'){
			unsigned char v6[3]; v6[0]=input[i+1],v6[1]=input[i+2],v6[2]=input[i+3]; i += 3;
			int v5 = atoi(v6);
			for(int i2 = 0; i2 < v5; i2++) putchar(*ptr);
		}
    }
}

int f3(FILE* v9){
	//f2("$048*001"); return 0;
	fseek(v9, 0, SEEK_END);
	int v10 = ftell(v9);
	fseek(v9, 0, SEEK_SET);
	unsigned char* v11 = (unsigned char*)malloc(v10*sizeof(CS));
	fread(v11,v10,1,v9);
	f2(v11);
	free(v11);
}

int f1(CS* v8){
	FILE* v9 = fopen(v8,"r");
	return v9?f3(v9):printf("[BFOp] Couldnt read file.");
}

int main(int argc, CS** argv) {return argc>>1?f1(argv[1]):printf("[BFOp] Please provide at least two arguments.");}