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

Ejemplo 2: dinámica de una partida
jugador1 gana la primera ronda
jugador2 gana la segunda ronda
entonces hasta el momento no hay ganador de la partida
jugador2 gana la tercera ronda
entonces la partida la gana jugador2

=end

require 'rspec' 
require_relative '../model/partida'
require_relative '../model/jugador'

describe 'Partida' do
  let(:jugador1) { Jugador.new('Emmanuel') }
  let(:jugador2) { Jugador.new('Brian') }
	let(:partida) { Partida.new(jugador1, jugador2) }

	it 'carga de jugadores: jugador1 y jugador2, devuelve los jugadores' do
	 	expect(partida.get_jugador_n1).to eq jugador1
    expect(partida.get_jugador_n2).to eq jugador2
	end

  it 'Dinamica de una partida: cada jugador tiene una ronda ganada,al
  final el jugador2 gana la tercer ronda, partida ganada por jugador2' do
    #ronda 1 gana jugador2
    jugador1.jugar('piedra')
    jugador2.jugar('papel')
    #ronda 2 gana jugador1
    jugador1.jugar('mono')
    jugador2.jugar('papel')
    #ronda 3 gana jugador2
    jugador1.jugar('papel')
    jugador2.jugar('tijera')

    expect(partida.ganador).to equal jugador2
  end

end
