require_relative 'tablero'
require_relative 'barco'

class BatallaNaval
  
  def initialize
    @tablero = Tablero.new(5,5)
    @lista_de_barcos = []

    barco = Barco.new('navio',2)
    @lista_de_barcos << barco
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

  def elegir_barco(nom)
    @lista_de_barcos.each do | barco |
      if barco.su_nombre == nom
        return barco
      end
    end
  end

  def elegir_posicion(posicion, direccion)

    if @tablero.esta_habilitada(posicion) && @tablero.esta_habilitada(direccion)
      return true
    end

  end

end