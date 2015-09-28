require_relative 'jugador'

class Ronda

  def initialize(jugador1, jugador2)
    @jugador_n1 = jugador1
    @jugador_n2 = jugador2
  end

  def reglas_ganador(jugada)
    reglas = { 
      'piedra' => ['tijera'],
      'papel' => ['piedra'],
      'tijera' => ['papel', 'mono'],
      'mono' => ['papel']   
     }
    reglas[jugada]
  end

  def reglas_empate(jugada)
    reglas = { 
      'piedra' => ['piedra', 'mono'],
      'papel' => ['papel'],
      'tijera' => ['tijera'],
      'mono' => ['mono', 'piedra']   
     }
    reglas[jugada]
  end

  def pelea

    if reglas_empate(@jugador_n1.jugada).include?(@jugador_n2.jugada)
      return 'Empate!'
    elsif reglas_ganador(@jugador_n1.jugada).include?(@jugador_n2.jugada)
      @jugador_n1.gano
    else
      @jugador_n2.gano
    end
  end  
  
end