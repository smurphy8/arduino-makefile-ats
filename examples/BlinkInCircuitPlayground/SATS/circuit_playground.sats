datatype port = 
  | PORTB of () 
  | PORTC of ()
  | PORTD of ()
  | PORTE of ()
  | PORTF of ()


#define PINMAX 15

typedef pin = [i:int | i <= PINMAX] int (i)

fun setPinHigh (port:port,pin:pin) : void 
fun setPinLow (port:port,pin:pin) : void 

fun setPinHighVal(port:int, pin:int):void = "ext#setPinHigh_in_c"


fun setPinLowVal(port:int, pin:int):void = "ext#setPinLow_in_c"


// fun ddrb():[l:addr] (uint8 @ l|ptr l)  = "ext#DDRB"
fun ddrc():[l:addr] (int @l |ptr l)  = "ext#DDRC_in_c"