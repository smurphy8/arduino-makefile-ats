datatype port = 
  | PORTB of () 
  | PORTC of ()
  | PORTD of ()
  | PORTE of ()
  | PORTF of ()


#define PINMAX 7

typedef pin = [i:int | i < PINMAX] int (i)


val setPinHigh (port:port,pin:pin) : void
