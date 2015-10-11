require 'rspec' 
require_relative '../model/tablero'

describe 'Tablero' do
  let(:tablero) { Tablero.new(10,10)}

  it 'Creacion del tablero de 10x10' do
    expect(tablero.medidas).to eq [10,10] 
  end

  it 'devolucion de indice de letra, empezando la numeracion de 1..n' do
    expect(tablero.numero_de_letra('f')).to eq 6
  end

end