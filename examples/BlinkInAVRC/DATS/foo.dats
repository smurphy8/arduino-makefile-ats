

#include "avr_prelude/kernel_staload.hats"

staload "SATS/circuit_lab.sats"
dynload "DATS/loop.dats"
// val ex:int = g0int_add_int(1,LOW)




implement
main0 () = loop(myLoop) 
