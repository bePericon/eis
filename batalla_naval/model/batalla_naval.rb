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

    @proximo_disparo
    @tablero_oponente
    @puntos = 0
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

  def poner_barco(barco, posicion, direccion)
    tam_de_barco = barco.su_tamanio
    if @tablero.estan_habilitadas(tam_de_barco, posicion, direccion)
      if @tablero.posicion_ocupada(posicion)
        return 'Posicion ocupada!'
      else
        @tablero.ocupa_esta_posicion(barco, posicion, direccion)
        return 'Barco ubicado exitosamente!'
      end
    else
      return 'Posicion FUERA DE TABLERO!'
    end
  end

  def posicion_ocupada(posicion)
    @tablero.posicion_ocupada(posicion)    
  end

  def elegir_donde_disparar(posicion)
    @proximo_disparo  = posicion    
  end

  def proximo_disparo
    @proximo_disparo
  end

  def disparar
    if @tablero_oponente.posicion_ocupada(@proximo_disparo)
      barco = tablero_oponente.buscar_pos_marcar_daño(@proximo_disparo)
      @puntos += barco.hundido?
      return barco.su_estado
    else
      return 'Has dado en el AGUA!'
    end
  end

  def tablero_oponente
    @tablero_oponente
  end

  def tablero
    @tablero
  end

  def guardar_tablero_enemigo(tablero)
    @tablero_oponente = tablero    
  end

end