class LocationsController < ApplicationController
	def new
		@location = Location.new
	end

end
