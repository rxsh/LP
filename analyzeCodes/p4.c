#include <stdlib.h>
#include <stdio.h>

int *crearArray(){
    int *arr = malloc(3 * sizeof(int));
    arr[0] = 1;
    arr[1] = 2;
    arr[2] = 3;
    return arr;
}

int main(){
    int *miArray = crearArray();
    printf("%d\n", miArray[1]);
    return 0;
}
