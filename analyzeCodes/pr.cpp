#include <iostream>
using namespace std;
int global = 10;

void func(){
    static int x = global;
    x++;
    cout << x << endl;
}

int main(){
    func();
    global = 20;
    func();
    return 0;
}
