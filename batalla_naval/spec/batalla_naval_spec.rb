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

  it 'Elegir posicion para colocar barco, posicion libre' do
    barco = batallaNaval.elegir_barco('crucero')

    expect(batallaNaval.elegir_posicion(barco, 'a3', 'horizontal')).to eq true
  end

  it 'Poner el barco en la posicion libre' do
    barco = batallaNaval.elegir_barco('crucero')
    batallaNaval.poner_barco(barco, 'a3', 'horizontal')
    # Al tener el 'crucero' un tamaño de 2 ocuparia horizontalmente 'a3' y 'b3'
    expect(batallaNaval.posicion_ocupada('a3')).to eq true 
    expect(batallaNaval.posicion_ocupada('b3')).to eq true
  end

end