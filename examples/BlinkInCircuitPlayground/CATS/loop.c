#include <avr/io.h>
#include <util/delay.h>

void
port_on_in_c () {
  PORTC = 0xFF;
};

void
port_off_in_c () {
  PORTC = 0x00;
};

void
delay_one_ms_in_c () {
  _delay_ms(1);
};

void
delay_in_c (int x) { 
  if(x > 0) {
    for(x;x > 0 ; --x) {
      _delay_ms(1);
    };
  };
};



