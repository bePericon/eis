require_relative '../../model/batalla_naval'

Given(/^elijo posicion 'c3' que esta vacia$/) do 
  @juego = BatallaNaval.new
  @posicion_elegida = @juego.elegir_donde_disparar('c3')
end

When(/^disparo a posicion elegida 'c3'$/) do 
  #@resultado_disparo = @juego.disparar(@posicion_elegida)
end

Then(/^la posicion 'c3' es 'agua'$/) do 
end