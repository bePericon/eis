class Barco

  def initialize(nom, tam)
    @nombre = nom
    @tamanio = tam
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
  
end