

#include "avr_prelude/kernel_staload.hats"

staload "SATS/loop.sats"
// dynload "DATS/loop.dats"




implement
main0 () = atsLoop(5000)
