#include <avr/io.h>


void  
setPinHigh_in_c (int port, int pin) {
  switch(port) 
    {
    case 0x01:
      PORTB |= pin;
      break;
    case 0x02:
      PORTC |= pin;
      break;
    case 0x03:
      PORTD |= pin;
      break;
    case 0x04:
      PORTE |= pin;
      break;
    case 0x05:
      PORTF |= pin;
      break;
    default :
      break;
    }  
  
}
