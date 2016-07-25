MyApp.get "/" do
	erb :"home"	
end


MyApp.get "/newdistance" do
	@distance_calculator = Distance.new(params["distance"], params["miles"], params["kilometers"])
	erb :"results"	
end

