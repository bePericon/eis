require 'rspec' 
require_relative '../model/jugador'

describe 'Jugador' do
  let(:jugador1) { Jugador.new('Emmanuel') }

  it 'Creacion de jugador, devolucion de nombre' do
    expect(jugador1.get_nombre).to eq 'Emmanuel'
  end

  it 'Control de victorias, tres victorias aunque se siga jugando' do
    jugador1.gano
    jugador1.gano
    jugador1.gano
    jugador1.gano

    expect(jugador1.victorias).to equal(3)
  end

  it 'Verificacion de jugada actual' do
    jugador1.jugar('piedra')

    expect(jugador1.jugada).to eq 'piedra'
  end
end
