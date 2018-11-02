datatype port = 
  | PORTB of () 
  | PORTC of ()
  | PORTD of ()
  | PORTE of ()
  | PORTF of ()


#define PINMAX 15

typedef pin = [i:int | i <= PINMAX] int (i)

fun setPinHigh (port:port,pin:pin) : void 

fun setPinHighVal(port:int, pin:int):void = "ext#setPinHigh_in_c"


