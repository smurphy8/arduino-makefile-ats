#include "avr_prelude/kernel_staload.hats"

staload "SATS/loop.sats"
staload "SATS/circuit_playground.sats"
staload "SATS/neopixel.sats"


implement
main0 () = adafruit_neopixel() // atsLoop(250)
