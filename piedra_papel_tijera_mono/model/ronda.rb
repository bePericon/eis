require_relative 'jugador'

class Ronda

  def initialize(jugador1, jugador2)
    @jugador_n1 = jugador1
    @jugador_n2 = jugador2
  end

  def reglas(jugada)
    reglas_del_ganador = { 
      'piedra' => ['tijera'],
      'papel' => ['piedra'],
      'tijera' => ['papel', 'mono'],
      'mono' => ['papel']   
     }

    reglas_del_ganador[jugada]

  end

  def pelea

    if reglas(@jugador_n1.jugada).include?(@jugador_n2.jugada)
      @jugador_n1.gano
      @jugador_n1
    else
      @jugador_n2.gano
      @jugador_n2
    end
  end  
  
end