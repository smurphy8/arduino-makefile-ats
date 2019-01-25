datatype port = 
  | PORTB of () 
  | PORTC of ()
  | PORTD of ()
  | PORTE of ()
  | PORTF of ()


#define PINMAX 8

typedef pin = [i:int | i <= PINMAX] int (i)

typedef ddr = uint8 

(* Time to define some fun stuff *)
dataview is_writeable (v:view+,i:int) = 
  | Writeable(v,i) of (v)


fun setPinHigh  (port:port,pin:pin) : void 

fun setPinHighWithProof {l:addr} {i:int | i <= PINMAX}  
  (pf:is_writeable(ddr@ l,i) | ddr_ptr:ptr l, port:port,pin:int(i)) : (is_writeable(ddr@ l,i)|void)

fun setPinLow (port:port,pin:pin) : void 

fun setPinLowWithProof {l:addr} {i:int | i <= PINMAX}  
  (pf:is_writeable(ddr@ l,i) | ddr_ptr:ptr l, port:port, pin:int(i)) : (is_writeable(ddr@ l,i) | void)

fun setPinHighVal(port:int, pin:int):void = "ext#setPinHigh_in_c"


fun setPinLowVal(port:int, pin:int):void = "ext#setPinLow_in_c"





// fun ddrb():[l:addr] (uint8 @ l|ptr l)  = "ext#DDRB"
fun ddrc():[l:addr] (ddr @l |ptr l)  = "ext#getDDRC_in_c"

fun cast_int2_uint8(i:int):uint8 = "ext#cast_int2uint8_t_in_c"

fun setBitN(i:int, n:uint8):ddr = "ext#setBitN_in_c"




fun setDDR_Bit_High 
   {i:int} 
   {l:addr} ( pf:ddr@ l | x:int(i) , ddr_ptr: ptr l): 
   (is_writeable(ddr @ l,i) | ptr l)
   
   