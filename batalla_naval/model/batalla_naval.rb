require_relative 'tablero'

class BatallaNaval
  @tablero

  def crear_tablero(cantFilas,cantColumnas)
    @tablero = Tablero.new(cantFilas,cantColumnas)
  end

  def medidas_del_tablero
    return @tablero.medidas
  end

end