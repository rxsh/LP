#include <iostream>
#include <stdio.h>


void func(int *p){
    int y = 20;
    p = &y;
    std::cout << "p = " << p << std::endl;
    std::cout << "*p = " << *p << std::endl;
    std::cout << "&p = " << &p << std::endl;
}

int main(){
    int x = 10;
    int *ptr = &x;
    std::cout << "ptr = " << ptr << std::endl;
    std::cout << "*ptr = " << *ptr << std::endl;
    std::cout << "&ptr = " << &ptr << std::endl;
    std::cout << "&x = " << &x << std::endl;
    func(ptr);
    printf("*ptr = %d\n", *ptr);
    printf("&ptr = %d\n", &ptr);
    return 0;
}
