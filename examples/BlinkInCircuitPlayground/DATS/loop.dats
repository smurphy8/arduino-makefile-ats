staload "SATS/loop.sats"
staload "SATS/delay.sats"
staload "SATS/circuit_playground.sats"
staload "SATS/neopixel.sats"

#define PIN 6
#define PIN_B 5
fun runDDRC():
  [l:addr] 
  (is_writeable(ddr@ l, PIN) | ptr l   ) = let
  val (pf_ddr              | ddr_ptr ) = ddrb()
  val (pf_writeable        | ddr_ptr2) = setDDR_Bit_High(pf_ddr|PIN,ddr_ptr)
in    (pf_writeable        | ddr_ptr2) end


implement
atsLoop(x:int) = {
  
  fun go() = {      
      val (pf_write|ddr_ptr) = runDDRC()            

      val () = adafruit_neopixel() 
      val (pf|_) = setPinHighWithProof(pf_write|ddr_ptr,PORTB, PIN)
      val () = delay (x)

      val (_|_) = setPinLowWithProof(pf|ddr_ptr,PORTB, PIN)
      val () = delay (x)
      
      val () = go ()
  }
  val () = go ()
}



