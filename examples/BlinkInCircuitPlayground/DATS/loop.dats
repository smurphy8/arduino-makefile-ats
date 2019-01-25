staload "SATS/loop.sats"
staload "SATS/delay.sats"
staload "SATS/circuit_playground.sats"
staload "SATS/neopixel.sats"


fun runDDRC():
  [l:addr] [i:int]
  (is_writeable(ddr@ l, i) | ptr l) = let
  val (pf_ddr|ddr_ptr) = ddrc()
  val (pf_writeable|ddr_ptr2) = setDDR_Bit_High(pf_ddr|7,ddr_ptr)
in (pf_writeable| ddr_ptr2) end

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
  
  

  val () = go ()

}



