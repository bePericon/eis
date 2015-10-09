require_relative 'tablero'

class BatallaNaval
  
  def initialize
    @tablero
    @lista_de_barcos = []    
  end

  def crear_tablero(cantFilas,cantColumnas)
    @tablero = Tablero.new(cantFilas,cantColumnas)
  end

  def medidas_del_tablero
    return @tablero.medidas
  end

  def agregar_barco(barco)
    @lista_de_barcos << barco    
  end

  def lista_de_barcos
    lista = []
    @lista_de_barcos.each do | barco |
      lista << barco.datos
    end
    return lista
  end

end