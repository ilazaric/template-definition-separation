#include "lib.hpp"

template<typename T>
int Bla<T>::f(){return sizeof(T);}

template<typename T>
int Bla<T>::g(int x, int y){return x + y + sizeof(T);}
