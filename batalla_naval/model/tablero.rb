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

  def hay_lugar_horizontalmente(tam, pos_en_caracteres, dir)
    pos = numero_de_letra(pos_en_caracteres[0])

    (dir == 'horizontal')&&((@columnas-pos-tam) >= (-1)) ? true : false

  end

  def hay_lugar_verticalmente(tam, pos_en_caracteres, dir)
    pos = pos_en_caracteres[1].to_i

    (dir == 'vertical')&&((@filas-pos-tam) >= (-1)) ? true : false
    
  end

  def posicion_habilitada(pos_en_caracteres)
    (numero_de_letra(pos_en_caracteres[0]) <= @columnas)&&(pos_en_caracteres[1].to_i <= @filas) ? true : false
  end

  def estan_habilitadas(tam_de_barco, posicion, direccion)
    # Separo la posicion recibida (ej: 'b3') en un array de caracteres (ej: ['b', '3'])
    pos_en_caracteres = posicion.split(//)

    bool_posicion = posicion_habilitada(pos_en_caracteres)

    bool_direccion = hay_lugar_horizontalmente(tam_de_barco, pos_en_caracteres, direccion) || hay_lugar_verticalmente(tam_de_barco, pos_en_caracteres, direccion)

    return bool_posicion && bool_direccion
  end

end