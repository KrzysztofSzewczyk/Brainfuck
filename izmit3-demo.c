
int buf = -1;

int read(void) {
    int r;
    if (buf != -1) {
        r = buf;
        buf = -1;
    } else {
        r = read();
        if (r == -1)
            exit(0);
    }
    return r;
}

void unread(int c) {
    buf = c;
}

int readnum(int c) {
    int n = 0;
    int m = 0;
    if (c == '-')
        m = 1;
    else
        n += c - '0';
    while (1) {
        c = read();
        if (c >= '0' && c <= '9') {
            n *= 10;
            n += c - '0';
        } else {
            unread(c);
            break;
        }
    }
    if (m) {
        n = -n;
    }
    return n;
}

int main() {
    int stack[32] = {0}, sp = 0, printDollar = 1;
    const char * emsg = "Stack Underflow.";
    const char * omsg = "Stack Overflow.";
    const char * ezero = "Error: Division by zero";
    
    while (1) {
        if (printDollar) {
            pstr(" $ ");
            printDollar = 0;
        }
        char c = read();
        if (c >= '0' && c <= '9') {
            if(sp > 31) {
                puts(omsg);
                exit(0);
            }
            stack[sp] = readnum(c);
            sp = sp + 1;
        } else if(c == '+' || c == '-' || c == '*' || c == '/' || c == '%') {
            if(sp <= 1) {
                puts(emsg);
                exit(0);
            }
            
            int a = stack[--sp];
            int b = stack[--sp];
            
            if (c == '+') {
                stack[sp++] = a+b;
            } else if (c == '-') {
                stack[sp++] = a-b;
            } else if (c == '*') {
                stack[sp++] = a*b;
            } else if (c == '/') {
                if (b == 0) {
                    puts(ezero);
                    exit(0);
                }
                stack[sp++] = a/b;
            } else if (c == '%') {
                if (b == 0) {
                    puts(ezero);
                    exit(0);
                }
                stack[sp++] = a%b;
            }
        } else if (c == '\n') {
            int i = 0;
            pstr("SP=");
            pnum(sp);
            putchar('\n');
            for (; i < sp; i++) {
                pstr("BP+");
                pnum(i);
                pstr("=");
                pnum(stack[i]);
                putchar('\n');
            }
            printDollar = 1;
        }
    }
}

