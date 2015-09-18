class Chopper
	
	def chop (num , array)
	
		if array.include?(num)
			array.index(num)
		else
			-1
		end
	end

	def sum (array)

		if array.empty?
			'vacio'
		elsif sum_inside_array(array) > 99
			'demasiado grande'
		else
			# Suma los numeros del array
			num_result = sum_inside_array(array)
			# Se descompone el numero en digitos dentro de un array
			array_num_digit = descompose(num_result) 

			numbers_string = []
			# Se transforma el array de int en uno de string
			array_num_digit.each do |digit|
				numbers_string << hash_number_string(digit)
			end 

			return numbers_string.join(',')
		end

	end

	def descompose(num)
		ret = []
		if num < 10
			ret << num
		else 
			ret << num / 10
			ret << num % 10
		end
		ret
	end

	def sum_inside_array(array)
		res = 0
		array.each do |num| 
			res += num
		end
		res
	end

# Clave int (digito) y valor string (nombre del digito)
	def hash_number_string(num)
		num_string = {
			0 => 'cero', 1 => 'uno', 2 => 'dos',
			3 => 'tres', 4 => 'cuatro', 
			5 => 'cinco', 6 => 'seis', 7 => 'siete',
			8 => 'ocho', 9 => 'nueve'
		}
		num_string[num]
	end
end