class Jugador
  
  def initialize(nombre)
    @nombre = nombre
    @jugada_actual
    @victorias = 0
  end
  
  def get_nombre
    @nombre    
  end

  def jugar(jugada)
    @jugada_actual = jugada
    return self
  end

  def jugada
    @jugada_actual
  end

  def victorias
    @victorias
  end

  def gano
    if @victorias < 3
      @victorias += 1
      return self
    end  
  end

end