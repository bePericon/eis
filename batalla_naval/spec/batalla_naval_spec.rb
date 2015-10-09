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
    batallaNaval.agregar_barco(barcoChico)
    batallaNaval.agregar_barco(barcoGrande)
    expect(batallaNaval.lista_de_barcos).to eq [['barco_chico',1],['barco_grande',3]]
  end

  it 'Elegir barco por su nombre' do
    batallaNaval.agregar_barco(barcoChico)
    batallaNaval.agregar_barco(barcoGrande)

    expect(batallaNaval.elegir_barco('barco_chico')).to eq barcoChico
  end

end