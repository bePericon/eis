require_relative '../../model/batalla_naval'

Given(/^elijo posicion 'c3' que esta vacia$/) do 
  @juego = BatallaNaval.new
  @juego.elegir_donde_disparar('c3')
end

When(/^disparo a posicion elegida 'c3'$/) do 
  @juego_oponente = BatallaNaval.new

  @juego.guardar_tablero_enemigo(@juego_oponente.tablero)
  @resultado_disparo = @juego.disparar
end

Then(/^la posicion 'c3' es 'agua'$/) do 
  expect(@resultado_disparo).to eq 'Has dado en el AGUA!'
end

###########################################################################################

Given(/^elijo posicion 'a3' que esta ocupada$/) do
  @juego_oponente = BatallaNaval.new
  @barco_oponente = @juego_oponente.elegir_barco('crucero')
  @juego_oponente.poner_barco(@barco_oponente, 'a3', 'horizontal')

  @juego = BatallaNaval.new
  @juego.guardar_tablero_enemigo(@juego_oponente.tablero)

  @juego.elegir_donde_disparar('a3')
end

When(/^disparo a posicion elegida 'a3'$/) do 
  @resultado_disparo = @juego.disparar
end

Then(/^hay un barco en esa posicion, recibe daño pero no se hunde$/) do
  expect(@resultado_disparo).to eq 'PUM! Has dado en el blanco!'
end

###########################################################################################

Given(/^elijo posicion 'b4' a donde disparar$/) do
  @juego_oponente = BatallaNaval.new
  @barco_oponente = @juego_oponente.elegir_barco('submarino')
  @juego_oponente.poner_barco(@barco_oponente, 'b4', 'horizontal')

  @juego = BatallaNaval.new
  @juego.guardar_tablero_enemigo(@juego_oponente.tablero)

  @juego.elegir_donde_disparar('b4')
end

When(/^disparo a posicion elegida 'b4'$/) do
  @resultado_disparo = @juego.disparar
end

Then(/^hay un barco en esa posicion y se hunde$/) do
  expect(@resultado_disparo).to eq 'KATAPUM! Has hundido un barco!'
end

