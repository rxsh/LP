#include <stdio.h>
#include <stdlib.h>

int *crear_entero(int valor){
    int *p = malloc(sizeof(int));
    printf("*p = %d\n", *p);
    printf("&p = %d\n", &p);
    *p = valor;
    printf("Despues de valor *p = %d\n", *p);
    printf("&p = %d\n", &p);
    return p;
}

int main(){

    int *num = crear_entero(42);
    printf("num = %d\n", num);
    printf("*num = %d\n", *num);
    free(num);
    return 0;

    return 0;
}
