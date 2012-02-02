module FactoryHelpers
	
	def valid_user
		@user ||= { :name => "Testy McUserton", :email => "testy@userton.com", :password => "please", :password_confirmation => "please"}
	end
	
	def valid_project
		@project ||= { :name => "My Special Project", :details => "A great project about nothing.", :map_type => "Hybrid"}
	end
	
end
World(FactoryHelpers)
