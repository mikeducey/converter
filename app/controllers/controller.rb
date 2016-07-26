MyApp.get "/" do
	erb :"home"	
end


MyApp.get "/distanceconvert" do

	@distance_calculator = Distance.new(params["distance"], params["distanceUnit"])
	@results = @distance_calculator.convertMilesToKilometers
	@explanation = @distance_calculator.displayConversion
	erb :"results"	

end

MyApp.get "/tempconvert" do

	@temp_calculator = Temperature.new(params["temperature"], params["tempUnit"])
	@results = @temp_calculator.convertCtoFandFtoC
	@explanation = @temp_calculator.displayConversion
	erb :"results"	

end


MyApp.get "/massconvert" do
	@mass_calculator = Mass.new(params["mass"], params["massUnit"])
	@results = @mass_calculator.convertWeightUnits
	@explanation = @mass_calculator.displayConversion
	erb :"results"
end