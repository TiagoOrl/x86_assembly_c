#include <stdio.h>

struct _test
{
    char buf[30];
};

typedef struct _test test;


extern int myAsm(int valA, int valB);
extern int localVars();
extern int sumValues(int a, int b);
extern test getStruct();


int main(int argc, char const *argv[])
{
    int r = myAsm(30, 65);
    // printf("val is %d\n", r);
    // printf("sum of vars is: %d\n", sumValues(10, 5000));

    test t = getStruct();

    printf("%c%c%c\n", t.buf[0],t.buf[1], t.buf[2]);

    return 0;
}
