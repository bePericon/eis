class Partida

	def initialize(j1, j2)
		@jugador_n1 = j1
		@jugador_n2 = j2
	end
	
	def get_jugador_n1
		@jugador_n1
	end
	
  def get_jugador_n2
    @jugador_n2    
  end

  def ganador
    if @jugador_n1.victorias > @jugador_n2.victorias
      @jugador_n1
    else
      @jugador_n2
    end
  end

end