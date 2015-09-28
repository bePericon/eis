# Ejemplo 1: dinámica de una ronda
#  jugador1 juega piedra
#  jugador2 juega papel
#  entonces la ronda la gana jugador2

require 'rspec' 
require_relative '../model/ronda'
require_relative '../model/jugador'

describe 'Ronda' do
  let(:jugador1) { Jugador.new('Emmanuel') }
  let(:jugador2) { Jugador.new('Brian') }
  let(:ronda) { Ronda.new }

  it 'Jugar una ronda: jugador1-> piedra , jugador2-> papel, ganador jugador2, devolver jugador2' do
    jugador1.jugar('piedra')
    jugador2.jugar('papel')

    expect(ronda.pelea(jugador1, jugador2)).to eq jugador2
  end

end