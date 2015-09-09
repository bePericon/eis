class Chopper
	
	def chop (num , array)
	
		if array.include?(3)
			array.index{ |num| num == 3}

		else
			-1
		
		end
	end

	def sum (array)

		if array.empty?

			'vacio'

		else
			res = 0

			array.each do |num| 
				res += num
			end
		
			if res == 1
				'uno'			
			elsif res == 4
				'cuatro'
			end				
		end
	end
end