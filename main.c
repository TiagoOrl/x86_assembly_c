#include <stdio.h>

struct _test
{
    char buf[30];
};

typedef struct _test test;


extern int myAsm(int valA, int valB);
extern int localVars();
extern int sumValues(int a, int b);
extern test createStruct();
extern int readStruct(test t);


int main(int argc, char const *argv[])
{
    int r = myAsm(30, 65);
    // printf("val is %d\n", r);
    // printf("sum of vars is: %d\n", sumValues(10, 5000));

    test t = createStruct();
    test t1;
    t1.buf[0] = 'A';
    t1.buf[1] = 'Z';
    t1.buf[2] = '-';
    t1.buf[3] = '5';

    // printf("%c%c%c\n", t.buf[0],t.buf[1], t.buf[2]);

    printf("%c\n", (char)readStruct(t1));

    return 0;
}
