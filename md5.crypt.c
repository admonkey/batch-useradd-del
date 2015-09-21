#define _XOPEN_SOURCE
#include <stdio.h>
#include <unistd.h>

int main (int argc, char* argv[])
{
  char *result;

  printf ("%s\n", crypt (argv[1], "$1$"));

  return (0);
}

/*  gcc -lcrypt md5.crypt.c -o md5.crypt  */