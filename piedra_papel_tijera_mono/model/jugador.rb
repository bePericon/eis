class Jugador
  
  def initialize(nombre)
    @nombre = nombre
    @jugada_actual
  end
  
  def get_nombre
    @nombre    
  end

  def jugar(jugada)
    @jugada_actual = jugada
  end

  def jugada
    @jugada_actual
  end

end