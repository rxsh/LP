#include <iostream>

using namespace std;

int f(int x){
    return x == 0 ? 1 : x * f(x-1);
}

int main(){

    int x = 5;
    int y = 0;
    for(int i=0; i<x; i++){
        y += f(i % 3);
    }
    cout << y << endl;

    cout << 0 % 3 << endl;
    cout << 1 % 3 << endl;
    cout << 2 % 3 << endl;
    cout << 3 % 3 << endl;
    cout << 4 % 3 << endl;
    cout << 5 % 3 << endl;
}
