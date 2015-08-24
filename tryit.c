#include <stdio.h>
#include "Foo_stub.h"

HsBool mylib_init(void);
void mylib_end(void);

int main(void)
{
  mylib_init();
  printf("foo 4: %ld\n", foo(4));
  bar(6);
  mylib_end();
}
