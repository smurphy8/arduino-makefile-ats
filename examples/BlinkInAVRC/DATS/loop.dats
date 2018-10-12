
//--------------------------------------------------
// myLoop implementation 
//--------------------------------------------------
%{^

#include <avr/io.h>
#include <util/delay.h>

#define LED 13
#define BLINK_DELAY_MS 5000.0
#define ATS_DYNLOADFLAG 0


void
loop_in_c () { 
 while (1) {
     PORTC = 0xFF;
     
     _delay_ms(300);
     
     PORTC = 0x00;

     _delay_ms(300);

 }; 



}

%} 


