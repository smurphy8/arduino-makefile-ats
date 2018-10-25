#include "avr_prelude/kernel_staload.hats"


datatype port = 
  | PORTB of () 
  | PORTC of ()
  | PORTD of ()
  | PORTE of ()
  | PORTF of ()




#define PINMAX 7

typedef 
pin = [i:int | i < PINMAX] int (i)



  


local
extern
fun example():void = "ext#port_on_in_c"

extern
fun setPinHigh(port:int, pin:int):void = "ext#setPinHigh_in_c"


val setPinHighInternal = lam(port:port, pin:pin) : void => case port of
  | PORTB () => setPinHigh (0 , pin)   
  | PORTC () => setPinHigh (1 , pin) 
  | PORTD () => setPinHigh (2 , pin) 
  | PORTE () => setPinHigh (3 , pin) 
  | PORTF () => setPinHigh (4 , pin) 
  

in 
val setPinHigh = lam(port:port,pin:pin) : void => setPinHighInternal(port,pin)
end
