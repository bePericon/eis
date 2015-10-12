require_relative 'tablero'
require_relative 'barco'

class BatallaNaval
  
  def initialize
    @tablero = Tablero.new(5,5)
    @lista_de_barcos = []

    barco1 = Barco.new('crucero',2)
    barco2 = Barco.new('destructor',3)
    barco3 = Barco.new('submarino',1)

    @lista_de_barcos << barco1
    @lista_de_barcos << barco2
    @lista_de_barcos << barco3
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

  def elegir_posicion(barco, posicion, direccion)
    tam_de_barco = barco.su_tamanio

    if @tablero.posicion_ocupada(posicion)
      return false
    elsif @tablero.estan_habilitadas(tam_de_barco, posicion, direccion)
      return true
    end

  end

  def poner_barco(barco, posicion, direccion)
    tam_de_barco = barco.su_tamanio

    @tablero.ocupa_esta_posicion(tam_de_barco, posicion, direccion)
  end

  def posicion_ocupada(posicion)
    @tablero.posicion_ocupada(posicion)    
  end

end