require_relative '../../model/batalla_naval'

Given(/^selecciono un barco 'crucero'$/) do
  @juego = BatallaNaval.new
  @barco_crucero = @juego.elegir_barco('crucero')
end

When(/^elijo la posicion 'a3' vacia$/) do
  @estado_posicion_elegida_crucero = @juego.elegir_posicion(@barco_crucero, 'a3', 'horizontal')
end

Then(/^el barco se ubica en esa posicion correctamente$/) do
  if @estado_posicion_elegida_crucero
    @juego.poner_barco(@barco_crucero, 'a3', 'horizontal')
    print 'Se ubico el barco exitosamente!'
  end
end

###########################################################################################

Given(/^selecciono un barco 'crucero y luego un 'destructor'$/) do
  @juego = BatallaNaval.new
  @barco_crucero = @juego.elegir_barco('crucero')
  @barco_destructor = @juego.elegir_barco('destructor')
end

When(/^elijo la posicion 'a3' para 'crucero' y lo ubico,ademas elijo la posicion 'b3' que esta ocupada$/) do
  @estado_posicion_elegida_crucero = @juego.elegir_posicion(@barco_crucero, 'a3', 'horizontal')
  if @estado_posicion_elegida_crucero 
    @juego.poner_barco(@barco_crucero, 'a3', 'horizontal')
    print 'Se ubico el barco exitosamente!'
  end

  @estado_posicion_elegida_destructor = @juego.elegir_posicion(@barco_destructor, 'b3', 'vertical')
end

Then(/^el barco 'destructor' no se pudo ubicar en esa posicion$/) do
  if @estado_posicion_elegida_destructor
    @juego.poner_barco(@barco_destructor, 'b3', 'vertical')
    print 'Se ubico el barco exitosamente!'
  else
    print 'No se puede ubicar, posicion ocupada!'
  end
    
end

###########################################################################################

Given(/^selecciono un barco 'destructor' de nuevo$/) do
  @juego = BatallaNaval.new
  @barco_destructor = @juego.elegir_barco('destructor')
end

When(/^elijo la posicion 'k2' fuera del tablero$/) do
  @estado_posicion_elegida_destructor = @juego.elegir_posicion(@barco_destructor, 'k2', 'horizontal')
end

Then(/^no puedo ubicar el barco en esa posicion que esta fuera del tablero$/) do
  if @estado_posicion_elegida_destructor
    @juego.poner_barco(@barco_destructor, 'k2', 'horizontal')
    print 'Se ubico el barco exitosamente!'
  else
    print 'No se puede ubicar, posicion fuera de tablero'
  end
end
