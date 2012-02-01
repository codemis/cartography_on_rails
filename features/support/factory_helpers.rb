module FactoryHelpers
	
	def valid_user
		@user ||= { :name => "Testy McUserton", :email => "testy@userton.com", :password => "please", :password_confirmation => "please"}
	end
	
end
World(FactoryHelpers)