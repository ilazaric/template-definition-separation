# template-definition-separation
by doing weird shit during building you can make template functions act like regular functions

```
$ ./build.sh
Cleaning objdir ...
Building main.o ...
Generating explicit instantiations ...
Found symbol: Bla<int>::f()
Found symbol: Bla<int>::g(int, int)
Building lib.o ...
Building main ...
Success !!!
$ ./main ; echo $?
11
```

