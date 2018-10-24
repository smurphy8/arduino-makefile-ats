staload "SATS/loop.sats"
staload "SATS/delay.sats"


implement
atsLoop(x:int) = {
  fun go() = {
      val () = portOn ()
      val () = delay (x)
      val () = portOff ()         
      val () = delay (x)
      val () = go ()
  }
  val () = go ()
}



