require_relative '../../model/batalla_naval'

Given(/^selecciono un barco 'crucero'$/) do
  @juego = BatallaNaval.new
  @barco_seleccionado = @juego.elegir_barco('crucero')
end

When(/^elijo la posicion 'a3' vacia$/) do
  @estado_posicion_elegida = @juego.elegir_posicion(@barco_seleccionado, 'a3', 'horizontal')
end

Then(/^el barco se ubica en esa posicion correctamente$/) do
  if @estado_posicion_elegida 
    @juego.poner_barco(@barco_seleccionado, 'a3', 'horizontal')
  end
end
