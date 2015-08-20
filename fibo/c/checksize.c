#include <stdio.h>
#include <stdlib.h>

#define checksize(type, var)	\
    type var ; \
    printf("The size of '%s' is %li Byte(s).\n", #type, sizeof(var))

int main(int argc, char** argv)
{
    checksize(char, varchar);
    checksize(short, varshort);
    checksize(int, varint);
    checksize(long, varlong);
    checksize(long long, varlonglong);
    checksize(float, varfloat);
    checksize(double, vardouble);
    checksize(long double, varlongdouble);
    return EXIT_SUCCESS;
}

