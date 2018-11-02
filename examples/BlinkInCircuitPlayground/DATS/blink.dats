#include "avr_prelude/kernel_staload.hats"

staload "SATS/loop.sats"
staload "SATS/circuit_playground.sats"



implement
main0 () = atsLoop(250)
