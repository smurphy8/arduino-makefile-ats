staload "SATS/loop.sats"
staload "SATS/delay.sats"
staload "SATS/circuit_playground.sats"
staload "SATS/neopixel.sats"

implement
atsLoop(x:int) = {
  fun go() = {
      val () = adafruit_neopixel() 
//      val () = setPinHigh(PORTC, 7)
//      val () = delay (x)
//      val () = setPinLow(PORTC, 7)
//      val () = portOff ()         
      val () = delay (x)
      val () = go ()
  }
  val () = go ()
}



