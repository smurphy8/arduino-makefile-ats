staload "SATS/loop.sats"
staload "SATS/delay.sats"
staload "SATS/circuit_playground.sats"
staload "SATS/neopixel.sats"


fun runDDRC():[l:addr] (uint8@l|void) = let 
  val (pf|rslt) = ddrc()
  val () = !rslt :=  cast_int2_uint8(0xFF)
in (pf|()) end 

implement
atsLoop(x:int) = {
  fun go() = {      
      val () = adafruit_neopixel() 
      val () = setPinHigh(PORTC, 7)
      val () = delay (x)
      val () = setPinLow(PORTC, 7)
      val () = portOff ()         
      val () = delay (x)
      val () = go ()
  }
  val (_|_) = runDDRC()
  val () = go ()

}



