# destructor: 3 casillas
# crucero: 2 casillas
# submarino: 1 casilla

class Barco

  def initialize(nom, tam)
    @nombre = nom
    @tamanio = tam
    @danio = 0
  end

  def su_nombre
    return @nombre    
  end

  def su_tamanio
    return @tamanio
  end

  def datos
    return [@nombre,@tamanio]
  end

  def marcar_daño
    @danio += 1
  end

  def su_estado
    if @tamanio == @danio
      'KATAPUM! Has hundido un barco!'
    else
      'PUM! Has dado en el blanco!'
    end
  end

  def hundido?
    @tamanio == @danio ? 1 : 0
  end
  
end