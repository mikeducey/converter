require "pry"

class Distance 

	def initialize(distance, miles, kilometers)
		@distance = distance
		@miles = miles
		@kilometers = kilometers
	end

	#reader for the miles
	def get_miles
		@miles
	end

	#reader for the kilometers
	def get_kilometers
		@kilometers
	end

	#reader for the distance
	def get_distance
		@distance
	end

	#This should convert from miles to kilometers
	def convertDistance
		if @miles
			result = @distance * 1.60934
		elsif
			result = @distance * 0.621371
		end
		return result
	end

end