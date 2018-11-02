#include "avr_prelude/kernel_staload.hats"

staload "SATS/circuit_playground.sats"


implement
setPinHigh (port:port, pin:pin) = let
   
  
  val setPinHighInternal = lam(port:port, pin:pin) : void => case port of
    | PORTB () => setPinHighVal (0 , pin)
    | PORTC () => setPinHighVal (1 , pin)
    | PORTD () => setPinHighVal (2 , pin)
    | PORTE () => setPinHighVal (3 , pin)
    | PORTF () => setPinHighVal (4 , pin)
    
  
in
  setPinHighInternal(port,pin)

end

