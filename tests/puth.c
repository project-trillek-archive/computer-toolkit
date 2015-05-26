
int main (void) {

  char* ptr = 0x0600; /* Screen buffer initial position on trillek firmware */
  *ptr = 'H'; ptr++;
  *ptr = 0xF0; ptr++; /* Black ink, White paper*/
  /*
  *ptr = 'e'; ptr++;
  *ptr = 0xF0; ptr++;
  *ptr = 'l'; ptr++;
  *ptr = 0xF0; ptr++;
  *ptr = 'l'; ptr++;
  *ptr = 0xF0; ptr++;
  *ptr = 'o'; ptr++;
  *ptr = 0xF0; ptr++;
  *ptr = ' '; ptr++;
  *ptr = 0xF0; ptr++;
  *ptr = 'w'; ptr++;
  *ptr = 0xF0; ptr++;
  *ptr = 'o'; ptr++;
  *ptr = 0xF0; ptr++;
  *ptr = 'r'; ptr++;
  *ptr = 0xF0; ptr++;
  *ptr = 'l'; ptr++;
  *ptr = 0xF0; ptr++;
  *ptr = 'd'; ptr++;
  *ptr = 0xF0; ptr++;
  *ptr = '!'; ptr++;
  *ptr = 0xF0; ptr++;
*/
  return 0;
}
