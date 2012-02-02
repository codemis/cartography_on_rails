require 'spec_helper'

describe Location do
	before(:each) do
		@attr = { 
		:name => "My Location",
		:description => "This is my new special location.",
		:lat => "33.1234",
		:long => "118.34598",
		:status => 1
		}
	end

	it "Should add a new location" do
	Location.create!(@attr)
	end

	describe "validations" do
		it "Should not add a new location if the name is missing" do
		no_location_name = Location.new(@attr.merge(:name => ""))
		no_location_name.should_not be_valid
		end

		it "Should not add a new location if the lat is missing" do
		no_location_lat = Location.new(@attr.merge(:lat => ""))
		no_location_lat.should_not be_valid
		end

		it "Should not add a new location if the long is missing" do
		no_location_long = Location.new(@attr.merge(:long => ""))
		no_location_long.should_not be_valid
		end

	end
end
