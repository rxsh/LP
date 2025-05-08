#include <stdio.h>

int *generarNumero(){
    int num = 42;
    return &num;
}

int main(){
    int* ptr = generarNumero();
    printf("%d", *ptr);
    return 0;
}

