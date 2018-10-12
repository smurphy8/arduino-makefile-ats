staload "SATS/circuit_lab.sats"



implement loop (f) = f(500)






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
loop_in_c (int x) { 
 while (1) {
     PORTC = 0xFF;
     
     _delay_ms(x);
     
     PORTC = 0x00;

     _delay_ms(x);

 }; 

}

%} 


