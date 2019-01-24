#include "avr_prelude/kernel_staload.hats"

staload "SATS/circuit_playground.sats"


implement
setPinHigh (port:port, pin:pin) = let      
  val setPinHighInternal = lam(port:port, pin:pin) : void => case port of
    | PORTB () => setPinHighVal (0 , pin)
    | PORTC () => setPinHighVal (1 , pin)
    | PORTD () => setPinHighVal (2 , pin)
    | PORTE () => setPinHighVal (3 , pin)
    | PORTF () => setPinHighVal (4 , pin)      
in
  setPinHighInternal(port,pin)
end


// TODO Implement setPinHighWithProof 

implement
setPinHighWithProof {l:addr} {i:int} (pf:is_writeable(ddr@ l,i) | ddr_ptr:ptr l, port:port, pin:pin):
  (is_writeable(ddr@ l,i) | void) = let
   val setPinHighInternal = lam(port:port, pin:pin) : void => case port of 
    | PORTB () => setPinHighVal (0 , pin)
    | PORTC () => setPinHighVal (1 , pin)
    | PORTD () => setPinHighVal (2 , pin)
    | PORTE () => setPinHighVal (3 , pin)
    | PORTF () => setPinHighVal (4 , pin)

in
  (pf|setPinHighInternal(port,pin))
end




implement
setPinLow (port:port, pin:pin) = let      
  val setPinLowInternal = lam(port:port, pin:pin) : void => case port of
    | PORTB () => setPinLowVal (0 , pin)
    | PORTC () => setPinLowVal (1 , pin)
    | PORTD () => setPinLowVal (2 , pin)
    | PORTE () => setPinLowVal (3 , pin)
    | PORTF () => setPinLowVal (4 , pin)      
in
  setPinLowInternal(port,pin)
end


implement
setDDR_Bit_High 
   {i:int} 
   {l:addr}
   ( pf:ddr@ l | x:int, ddr_ptr: ptr l): 
   (is_writeable(ddr @ l,i) | ptr l) = let 
  val rslt = !ddr_ptr
  val rsltNew = setBitN(x,rslt)
  val () = !ddr_ptr := cast_int2_uint8(0xFF) //setBitN(x,rslt)
  in (Writeable(pf)|ddr_ptr)
  end