#include <stdio.h>
#include "Foo_stub.h"

#include "HsFFI.h"

HsBool mylib_init(void);
void mylib_end(void);

int main(void)
{
  mylib_init();
  printf("foo 4: %ld\n", foo(4));
  mylib_end();
}
