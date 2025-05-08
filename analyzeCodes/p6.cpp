#include <iostream>

using namespace std;

int& obtenerX(){
    static int x = 10;
    return x;
}

int main(){
    int& y = obtenerX();
    y = 20;
    cout << obtenerX();
    return 0;
}
