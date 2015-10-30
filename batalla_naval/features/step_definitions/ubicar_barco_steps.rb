require_relative '../../model/batalla_naval'

Given(/^selecciono un barco 'crucero'$/) do
  @juego = BatallaNaval.new
  @barco_crucero = @juego.elegir_barco('crucero')
end

When(/^ubico en la posicion 'a3' con orientacion horizontal el 'crucero'$/) do
  @resultado = @juego.poner_barco(@barco_crucero, 'a3', 'horizontal')
end

Then(/^el barco se ubica en esa posicion correctamente porque esta vacia$/) do
  expect(@resultado).to eq 'Barco ubicado exitosamente!'
end

###########################################################################################

Given(/^selecciono un barco 'crucero y luego un 'destructor'$/) do
  @juego = BatallaNaval.new
  @barco_crucero = @juego.elegir_barco('crucero')
  @barco_destructor = @juego.elegir_barco('destructor')
end

Given(/^ubico en la posicion 'a3' con orientacion vertical el 'crucero'$/) do
  @resultado_crucero = @juego.poner_barco(@barco_crucero, 'a3', 'vertical')
end

When(/^ubico en la posicion 'a3' con orientacion vertical el 'destructor'$/) do
  @resultado_destructor = @juego.poner_barco(@barco_destructor, 'a3', 'vertical')
end

Then(/^el barco 'destructor' no se pudo ubicar en esa posicion porque esta ocupada$/) do
  expect(@resultado_destructor).to eq 'Posicion ocupada!'    
end

###########################################################################################

Given(/^selecciono un barco 'destructor'$/) do
  @juego = BatallaNaval.new
  @barco_destructor = @juego.elegir_barco('destructor')
end

When(/^ubico en la posicion 'k2' con orientacion horizontal el 'destructor'$/) do
  @resultado = @juego.poner_barco(@barco_destructor, 'k2', 'horizontal')
end

Then(/^no puedo ubicar el barco en esa posicion que esta fuera del tablero$/) do
  expect(@resultado).to eq 'Posicion FUERA DE TABLERO!' 
end
