require 'rspec' 
require_relative '../model/jugador'

describe 'Jugador' do
  let(:jugador1) { Jugador.new('Emmanuel') }

   it 'Creacion de jugador, devolucion de nombre' do
    expect(jugador1.get_nombre).to eq 'Emmanuel'
  end

end
