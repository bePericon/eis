require 'rspec' 
require_relative '../model/batalla_naval'
require_relative '../model/barco'

describe 'BatallaNaval' do
  let(:batallaNaval) { BatallaNaval.new }

  it 'Creacion del juego, un tablero vacio de 10x10' do
    batallaNaval.crear_tablero(10,10)
    expect(batallaNaval.medidas_del_tablero).to eq [10,10] 
  end

  it 'Mostrar la lista de barcos en el juego' do
    expect(batallaNaval.lista_de_barcos).to eq [['crucero',2],['destructor',3],['submarino',1]]
  end

  it 'Elegir barco por su nombre' do
    crucero = Barco.new('crucero',2)
    barco_esperado = batallaNaval.elegir_barco('crucero')
    
    expect(barco_esperado.datos).to eq crucero.datos
  end

  it 'Poner el barco en la posicion libre' do
    barco = batallaNaval.elegir_barco('crucero')
    # Al tener el 'crucero' un tama ño de 2 ocuparia horizontalmente 'a3' y 'b3'
    expect(batallaNaval.poner_barco(barco, 'a3', 'horizontal')).to eq 'Barco ubicado exitosamente!'
    expect(batallaNaval.posicion_ocupada('a3')).to eq true 
    expect(batallaNaval.posicion_ocupada('b3')).to eq true
  end

  it 'Tratar de poner barco en posicion ocupada, no poder hacerlo' do
    barco = batallaNaval.elegir_barco('crucero')
    resultado_crucero= batallaNaval.poner_barco(barco, 'a3', 'horizontal')

    barco_destructor = batallaNaval.elegir_barco('destructor')
    resultado_destructor = batallaNaval.poner_barco(barco_destructor, 'b3', 'vertical')
    # Posiciones del barco 'crucero' estan ocupadas
    expect(resultado_crucero).to eq 'Barco ubicado exitosamente!'
    expect(batallaNaval.posicion_ocupada('a3')).to eq true 
    expect(batallaNaval.posicion_ocupada('b3')).to eq true
    # Posiciones del barco 'destructor' no se ocupan
    expect(resultado_destructor).to eq 'Posicion ocupada!'
    expect(batallaNaval.posicion_ocupada('b4')).to eq false
    expect(batallaNaval.posicion_ocupada('b5')).to eq false
  end

  it 'Poner el barco una posicion que caiga fuera del tablero' do
    barco = batallaNaval.elegir_barco('destructor')

    resultado = batallaNaval.poner_barco(barco, 'k2', 'horizontal')
    expect(resultado).to eq 'Posicion FUERA DE TABLERO!'
  end

  it 'Poner el barco  una posicion dentro del tablero, pero que el resto caigan fuera del tablero' do
    barco = batallaNaval.elegir_barco('destructor')

    resultado = batallaNaval.poner_barco(barco, 'e1', 'horizontal')
    expect(resultado).to eq 'Posicion FUERA DE TABLERO!'
  end

  ########################################################################################

  it 'Elegir posicion donde disparar' do
    batallaNaval.elegir_donde_disparar('c3')

    expect(batallaNaval.proximo_disparo).to eq 'c3'
  end

  it 'Disparo a una posicion vacia' do
    batallaNaval_oponente = BatallaNaval.new
    batallaNaval.guardar_tablero_enemigo(batallaNaval_oponente.tablero)

    batallaNaval.elegir_donde_disparar('c3')

    expect(batallaNaval.disparar).to eq 'Has dado en el AGUA!'
  end

  it 'Poner un barco en el tablero oponente y guardar el tablero en mi juego' do
    batallaNaval_oponente = BatallaNaval.new
    barco_oponente = batallaNaval_oponente.elegir_barco('crucero')
    batallaNaval_oponente.poner_barco(barco_oponente, 'a3', 'horizontal')

    batallaNaval.guardar_tablero_enemigo(batallaNaval_oponente.tablero)

    expect(batallaNaval_oponente.posicion_ocupada('a3')).to eq true
    expect(batallaNaval_oponente.posicion_ocupada('b3')).to eq true
  end

  it 'Destruir un barco oponente' do
    batallaNaval_oponente = BatallaNaval.new
    barco_oponente = batallaNaval_oponente.elegir_barco('submarino')
    batallaNaval_oponente.poner_barco(barco_oponente, 'b4', 'horizontal')

    batallaNaval.guardar_tablero_enemigo(batallaNaval_oponente.tablero)

    batallaNaval.elegir_donde_disparar('b4')

    expect(batallaNaval.disparar).to eq 'KATAPUM! Has hundido un barco!'
  end

  it 'Hundir un barco crucero completo' do
    batallaNaval_oponente = BatallaNaval.new
    barco_oponente = batallaNaval_oponente.elegir_barco('crucero')
    batallaNaval_oponente.poner_barco(barco_oponente, 'b1', 'vertical')

    batallaNaval.guardar_tablero_enemigo(batallaNaval_oponente.tablero)

    batallaNaval.elegir_donde_disparar('b1')

    expect(batallaNaval.disparar).to eq 'PUM! Has dado en el blanco!'

    batallaNaval.elegir_donde_disparar('b2')

    expect(batallaNaval.disparar).to eq 'KATAPUM! Has hundido un barco!'
  end

  it 'Hundir un barco destructor completo' do
    batallaNaval_oponente = BatallaNaval.new
    barco_oponente = batallaNaval_oponente.elegir_barco('destructor')
    batallaNaval_oponente.poner_barco(barco_oponente, 'b1', 'vertical')

    batallaNaval.guardar_tablero_enemigo(batallaNaval_oponente.tablero)

    batallaNaval.elegir_donde_disparar('b1')

    expect(batallaNaval.disparar).to eq 'PUM! Has dado en el blanco!'

    batallaNaval.elegir_donde_disparar('b2')

    expect(batallaNaval.disparar).to eq 'PUM! Has dado en el blanco!'

    batallaNaval.elegir_donde_disparar('b3')

    expect(batallaNaval.disparar).to eq 'KATAPUM! Has hundido un barco!'
  end

end