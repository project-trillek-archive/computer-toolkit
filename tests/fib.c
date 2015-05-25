
int fib(int n)
{
  if (n <= 1)
    return n;
  return fib(n - 1) + fib(n - 2);
}

int bss_int;
short bss_short;
char bss_char;
int data_int = 0x11223344;
short int data_short = 0x1122;
char data_char = 0x11;

char *pc = "string 'literal' \"fun\"\001\002";

int main(void)
{
  char ac[] = "abc";
  char* pc = "qwe";
  static char* pc2 = "qwe";
  void* pv = &pv;
  static void* pv2 = &pv2;
  return bss_int;
}

char large_bss_array[1024];

