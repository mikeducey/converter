require "pry"

class Distance 

	def initialize(distance, distanceUnit)
		@distance = distance.to_i
		@distanceUnit = distanceUnit
	end

	#reader for the miles
	def get_miles
		@miles
	end

	#reader for the distance unit
	def get_distance_unit
		@kilometers
	end

	#This should convert from miles to kilometers and kilometers to miles
	def convertMilesToKilometers
		if @distanceUnit == "kilometers"
			result = @distance * 1.60934
		elsif @distanceUnit == "miles"
			result = @distance * 0.621371
		end
		return (result).round(3)
	end

	def displayConversion
		if @distanceUnit == "kilometers"
			explanation = "You have converted #{@distance} kilometers to miles!"
		elsif @distanceUnit == "miles"
			explanation = "You have converted #{@distance} miles to kilometers!"
		end
		return explanation
	end
end

class Temperature 

	def initialize(temperature, tempUnit)
		@temperature = temperature.to_i
		@tempUnit = tempUnit
	end

	#reader for the temperature in degrees
	def get_temperature
		@temperature
	end

	#reader for the temperature unit
	def get_temperature_unit
		@tempUnit
	end

	#This should convert from miles to kilometers and kilometers to miles (doesn't work)
	def convertCtoFandFtoC
		if @tempUnit == "fahrenheit"
			result = ((@temperature - 32) * 5/9)
		elsif @tempUnit == "celsius"
			result = ((@temperature + 32) * 9/5)
		end
		return (result).round(3)
	end

	def displayConversion
		if @tempUnit == "fahrenheit"
			explanation = "You have converted #{@temperature} degrees Fahrenheit to Celsius!"
		elsif @tempUnit == "celsius"
			explanation = "You have converted #{@temperature} degrees Celsius to Fahrenheit!"
		end
		return explanation
	end
end

class Mass

	def initialize(mass, massUnit)
		@weight = mass.to_i
		@weightUnit = massUnit
	end

	def get_weight
		@weight
	end

	def get_weight_unit
		@weightUnit
	end

	def convertWeightUnits
		if @weightUnit == "pounds"
			result = (@weight * 0.45359237) #pounds to kilograms
		elsif @weightUnit == "kilograms"
			result = (@weight * 2.20462) #kilograms to pounds
		elsif @weightUnit == "stones"
			result = (@weight * 14) #stones to pounds
		end
		return (result).round(3)
	end

	def displayConversion
		if @weightUnit == "pounds"
			result =  "You have converted #{@weight} pounds to kilograms!"
		elsif @weightUnit == "kilograms"
			result = "You have converted #{@weight} kilograms to pounds!"
		elsif @weightUnit == "stones"
			result = "You have converted #{@weight} stones to pounds!"
		end
		return result
	end

	def convertWeightUnitsSecondConversion
		if @weightUnit == "pounds"
			result = (@weight * 0.0714286) #pounds to stones
		elsif @weightUnit == "kilograms"
			result = (@weight * 0.157473) #kilograms to stones
		elsif @weightUnit == "stones"
			result = (@weight * 6.35029) #stones to kilograms
		end
		return (result).round(3)
	end

	def displayConversionSecondConversion
		if @weightUnit == "pounds"
			result =  "You have converted #{@weight} pounds to stones!"
		elsif @weightUnit == "kilograms"
			result = "You have converted #{@weight} kilograms to stones!"
		elsif @weightUnit == "stones"
			result = "You have converted #{@weight} stones to kilograms!"
		end
		return result
	end


end
