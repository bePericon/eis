require 'rspec' 
require_relative '../model/batalla_naval'
require_relative '../model/barco'

describe 'BatallaNaval' do
  let(:batallaNaval) { BatallaNaval.new }
  let(:barcoChico) { Barco.new('barco_chico',1)}
  let(:barcoGrande) { Barco.new('barco_grande',3)}

  it 'Creacion del juego, un tablero vacio de 10x10' do
    batallaNaval.crear_tablero(10,10)
    expect(batallaNaval.medidas_del_tablero).to eq [10,10] 
  end

  it 'Agregar barcos y mostrar la lista de barcos en el juego' do
    # Ya viene configurado un barco con nombre 'navio' dentro de la 
    # lista del juego, este tiene como tamaño 2. 

    batallaNaval.agregar_barco(barcoChico)
    batallaNaval.agregar_barco(barcoGrande)
    expect(batallaNaval.lista_de_barcos).to eq [['navio',2],['barco_chico',1],['barco_grande',3]]
  end

  it 'Elegir barco por su nombre' do
    batallaNaval.agregar_barco(barcoChico)
    batallaNaval.agregar_barco(barcoGrande)

    expect(batallaNaval.elegir_barco('barco_chico')).to eq barcoChico
  end

  it 'Elegir posicion para colocar barco, posicion libre' do
    barco = batallaNaval.elegir_barco('navio')

    expect(batallaNaval.elegir_posicion(barco, 'a3', 'horizontal')).to eq true
  end

  it 'Poner el barco en la posicion libre' do
    barco = batallaNaval.elegir_barco('navio')
    batallaNaval.poner_barco(barco, 'a3', 'horizontal')
    # Al tener el 'navio' un tamaño de 2 ocuparia horizontalmente 'a3' y 'b3'
    expect(batallaNaval.posicion_ocupada('a3')).to eq true 
    expect(batallaNaval.posicion_ocupada('b3')).to eq true
  end

end