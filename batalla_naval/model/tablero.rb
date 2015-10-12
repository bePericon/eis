class Tablero
  
  def initialize(cantFilas,cantColumnas)
    @filas = cantFilas
    @columnas = cantColumnas

    @letras = ['a','b','c','d','e','f','g','h','i',
              'j','k','l','m','n','ñ','o','p','q',
              'r','s','t','u','v','w','x','y','z']

    @posiciones_ocupadas = {}
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

  def ocupa_esta_posicion(barco, posicion, direccion)
    tam_de_barco = barco.su_tamanio

    pos_en_caracteres = posicion.split(//)
    num_caracter_letra = numero_de_letra(pos_en_caracteres[0])
    num_caracter_numero = pos_en_caracteres[1].to_i
    
    @posiciones_ocupadas[[num_caracter_letra, num_caracter_numero]] = barco
    
    if direccion == 'horizontal'
      val = 1
      while val <= (tam_de_barco -1)
        x = (num_caracter_letra + val)
        @posiciones_ocupadas[[x, num_caracter_numero]] = barco
        val += 1
      end
    elsif direccion == 'vertical'
      val = 1
      while val <= (tam_de_barco -1)
        y = (num_caracter_numero + val)
        @posiciones_ocupadas[[num_caracter_letra, y]] = barco
        val += 1
      end
    end
  end

  def posicion_ocupada(posicion)
    pos_en_caracteres = posicion.split(//)
    num_caracter_letra = numero_de_letra(pos_en_caracteres[0])
    num_caracter_numero = pos_en_caracteres[1].to_i
    
    p = [num_caracter_letra, num_caracter_numero]
    
    return @posiciones_ocupadas.include?(p)    
  end

  def buscar_pos_marcar_daño(posicion)
    pos_en_caracteres = posicion.split(//)
    num_caracter_letra = numero_de_letra(pos_en_caracteres[0])
    num_caracter_numero = pos_en_caracteres[1].to_i
    
    p = [num_caracter_letra, num_caracter_numero]

    barco = @posiciones_ocupadas[p]
    barco.marcar_daño

    return barco
  end

end