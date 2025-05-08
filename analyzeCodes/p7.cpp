#include <iostream>

using namespace std;

int& func(){
    int a = 5;
    return a;
}

int main(){
    int& r = func();
    cout << r << endl;
    return 0;
}

