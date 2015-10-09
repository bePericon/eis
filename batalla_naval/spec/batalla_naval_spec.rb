require 'rspec' 
require_relative '../model/batalla_naval'

describe 'BatallaNaval' do
  let(:batallaNaval) { BatallaNaval.new }

  it 'Creacion del juego, un tablero vacio de 10x10' do
    batallaNaval.crear_tablero(10,10)
    expect(batallaNaval.medidas_del_tablero).to eq [10,10] 
  end

end