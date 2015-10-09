require 'rspec' 
require_relative '../model/tablero'

describe 'Tablero' do
  let(:tablero) { Tablero.new(10,10)}

  it 'Creacion del tablero de 10x10' do
    expect(tablero.medidas).to eq [10,10] 
  end

end