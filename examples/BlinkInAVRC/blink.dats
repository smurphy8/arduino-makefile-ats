#include "avr_prelude/kernel_staload.hats"

staload "SATS/circuit_lab.sats"

val ex:int = g0int_add_int(1,LOW)

#define LED 13
#define BLINK_DELAY_MS 500.0


implement
main0 () =
{
(*  fun loop () = {
    val () = digitalWrite (LED, HIGH)
    val () = delay_ms (BLINK_DELAY_MS)
    val () = digitalWrite (LED, LOW)
    val () = delay_ms (BLINK_DELAY_MS)
    val () = loop ()
  }*)
 val () = ()
} (* end of [main0] *)
