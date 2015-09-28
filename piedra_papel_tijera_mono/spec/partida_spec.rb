=begin

Esta segunda Kata consiste en implementar el famoso 
juego Piedra-Papel-Tijera con algunas variaciones. 
No hace falta implementar toda una aplicación sino 
simplemente el modelo de objetos.
La primer variación es Piedra-Papel-Tijera-Mono, 
a las reglas ya conocidas se agrega:

* Mono gana a papel
* Mono pierde con tijera
* Mono empata con Piedra

Por otro lado aparece el concepto de "partida",
una partida es una competencia al mejor de tres rondas.
O sea, un jugador para ganar una partida tiene que 
ganar 2 rondas (análogo a lo que ocurre en el tenis 
o el voley con los sets).

=end

require 'rspec' 
require_relative '../model/partida'
require_relative '../model/jugador'

describe 'Partida' do
  let(:jugador1) { Jugador.new('Emmanuel') }
  let(:jugador2) { Jugador.new('Brian') }
	let(:partida) { Partida.new(jugador1, jugador2) }

	 it 'carga de jugadores: jugador1 y jugador2, devuelve los nombres de los jugadores' do
	 	expect(partida.get_jugador_n1).to eq jugador1
    expect(partida.get_jugador_n2).to eq jugador2
	end

end
