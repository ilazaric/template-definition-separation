#include "lib.hpp"

int h(){
  Bla<int> bla;
  return bla.f() + bla.g(1, 2);
}

int main(){
  return h();
}
