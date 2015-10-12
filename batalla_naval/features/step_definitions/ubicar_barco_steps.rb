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
  end
end

Given(/^selecciono un barco 'submarino'$/) do
  @juego = BatallaNaval.new
  @barco_submarino = @juego.elegir_barco('submarino')
end

When(/^elijo la posicion 'b3' que esta ocupada$/) do
  @barco_crucero = @juego.elegir_barco('crucero')
  @estado_posicion_elegida_crucero = @juego.elegir_posicion(@barco_crucero, 'a3', 'horizontal')
  if @estado_posicion_elegida_crucero 
    @juego.poner_barco(@barco_crucero, 'a3', 'horizontal')
  end

  @estado_posicion_elegida_submarino = @juego.elegir_posicion(@barco_submarino, 'b3', 'vertical')
end

Then(/^el barco no se pudo ubicar en esa posicion$/) do
  if @estado_posicion_elegida_submarino
    @juego.poner_barco(@barco_submarino, 'b3', 'vertical')
  end
end

