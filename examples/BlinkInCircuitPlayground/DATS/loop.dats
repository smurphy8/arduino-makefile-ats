staload "SATS/loop.sats"
staload "SATS/delay.sats"
staload "SATS/circuit_playground.sats"


implement
atsLoop(x:int) = {
  fun go() = {
      val () = setPinHigh(PORTC, 7)
      val () = delay (x)
      val () = portOff ()         
      val () = delay (x)
      val () = go ()
  }
  val () = go ()
}



