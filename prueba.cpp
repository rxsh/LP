#include <iostream>

using namespace std;

class base{
    public:
    virtual void mostrar1(){
        cout << "base1\n" << endl;
    }
    void mostrar2(){
        cout << "base2\n" << endl;
    }
};

class derivada1:public base{
    public:
    void mostrar1(){
        cout << "derivada 1\n";
    }
};

class derivada2: public base{
    public:
    void mostrar2(){
        cout << "derivada 2\n";
    }
};

void prt(base *q){
    q->mostrar1();
    q->mostrar2();
}

int main(){

    base b;
    base *p;
    derivada1 dv1;
    derivada2 dv2;
    p = &b;
    prt(p); // base1 y base2
    dv1.mostrar1(); // derivada 1
    p = &dv1; //
    prt(p); // derivada 1 y derivada 2
    dv2.mostrar2(); // derivada 2
    p = &dv2; //
    prt(p); // derivada 1 y derivada 2
}
