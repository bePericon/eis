require_relative 'jugador'

class Ronda

  def reglas(jugada)
    reglas_del_ganador = { 
      'piedra' => ['tijera'],
      'papel' => ['piedra'],
      'tijera' => ['papel', 'mono'],
      'mono' => ['papel']   
     }

    reglas_del_ganador[jugada]

  end

  def pelea(jugador1, jugador2)

    if reglas(jugador1.jugada).include?(jugador2.jugada)
      jugador1
    else
      jugador2
    end
  end  
  
end