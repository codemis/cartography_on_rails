module FactoryHelpers
	
	def valid_user
		@user ||= { :name => "Testy McUserton", :email => "testy@userton.com", :password => "please", :password_confirmation => "please"}
	end
	
	def valid_project
		@project ||= { :name => "My Special Project", :details => "A great project about nothing.", :map_type => "Hybrid"}
	end
	
	def valid_location
		@location ||= { :name => "My Special Location", :description => "A great location.", :status => "Sample status", :lat => "33.4925", :long => "118.8538"}
	end
	
end
World(FactoryHelpers)
