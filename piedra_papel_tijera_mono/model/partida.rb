require_relative 'ronda'
require_relative 'jugador'

class Partida

	def initialize(j1, j2)
		@jugador_n1 = j1
		@jugador_n2 = j2
    @rondas = []
	end
	
	def get_jugador_n1
		@jugador_n1
	end
	
  def get_jugador_n2
    @jugador_n2    
  end

  def jugar_ronda(jugada1, jugada2)
    @jugador_n1.jugar(jugada1)
    @jugador_n2.jugar(jugada2)

    ronda = Ronda.new(@jugador_n1, @jugador_n2)

    if @rondas.length < 3
      ronda.pelea
      @rondas << ronda
    else
      return 'Partida terminada!'
    end

  end

  def ganador
    if @jugador_n1.victorias == @jugador_n2.victorias
      return 'Partida empatada!'
    elsif @jugador_n1.victorias > @jugador_n2.victorias
      @jugador_n1
    else
      @jugador_n2
    end
  end

end