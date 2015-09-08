class Chopper
	
	def chop (num , array)
	
		if array.include?(3)
			array.index{ |num| num == 3}

		else
			-1
		
		end
	end
end