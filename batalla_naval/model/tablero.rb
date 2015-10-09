class Tablero
  
  def initialize(cantFilas,cantColumnas)
    @filas = cantFilas
    @columnas = cantColumnas
  end

  def medidas
    return [@filas,@columnas]
  end

end