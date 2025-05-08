#include <stdio.h>

void cambiar(int *p){
    *p = 30;
}

int main(){

    int x = 10;
    int *ptr = &x;
    printf("ptr = %d\n", ptr);
    printf("*ptr = %d\n", *ptr);
    printf("&ptr = %d\n", &ptr);
    printf("&x = %d\n", &x);
    cambiar(ptr);
    printf("ptr = %d\n", ptr);
    printf("*ptr = %d\n", *ptr);
    printf("x = %d\n", x);
    return 0;

}
