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
    partida.jugar_ronda('piedra', 'papel')
    #ronda 2 gana jugador1
    partida.jugar_ronda('mono', 'papel')
    #ronda 3 gana jugador2
    partida.jugar_ronda('papel', 'tijera')

    expect(partida.ganador).to equal jugador2
  end

  it 'Dinamica de una partida: primer ronda ganda por jugador1 y otras
  dos siguientes en empate' do
    #ronda 1 gana jugador1
    partida.jugar_ronda('tijera', 'papel')
    #ronda 2 empate
    partida.jugar_ronda('mono', 'piedra')
    #ronda 3 empate
    partida.jugar_ronda('tijera', 'tijera')

    expect(partida.ganador).to equal jugador1
  end

  it 'Dinamica de una partida: Partida empatada!' do
    #ronda 1 empate
    partida.jugar_ronda('tijera', 'tijera')
    #ronda 2 empate
    partida.jugar_ronda('mono', 'piedra')
    #ronda 3 empate
    partida.jugar_ronda('papel', 'papel')

    expect(partida.ganador).to eq 'Partida empatada!'
  end

  it 'Verificacion de partida terminada' do
    #ronda 1 gana jugador1
    partida.jugar_ronda('tijera', 'papel')
    #ronda 2 empate
    partida.jugar_ronda('mono', 'piedra')
    #ronda 3 empate
    partida.jugar_ronda('papel', 'papel')

    #ronda 4 que no deberia jugarse, gana jugador2
    expect(partida.jugar_ronda('papel', 'tijera')).to eq 'Partida ya terminada!'

    expect(partida.ganador).to eq jugador1
    expect(partida.get_rondas.length).to eq 3
  end

end
