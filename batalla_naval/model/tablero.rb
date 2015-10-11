class Tablero
  
  def initialize(cantFilas,cantColumnas)
    @filas = cantFilas
    @columnas = cantColumnas

    @letras = ['a','b','c','d','e','f','g','h','i',
              'j','k','l','m','n','ñ','o','p','q',
              'r','s','t','u','v','w','x','y','z']
  end

  def medidas
    return [@filas,@columnas]
  end

  def numero_de_letra(letra)
    return @letras.index(letra) +1
  end

  def esta_habilitada(posicion)
    pos = posicion
    caracteres = pos.split(//)

    (numero_de_letra(caracteres[0]) <= @columnas)&&(caracteres[1].to_i <= @filas) ? true : false
  
  end

end