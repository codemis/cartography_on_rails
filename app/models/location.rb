class Location
  include Mongoid::Document
	# Field attributes
	#
	field :name, :type => String
	field :description, :type => String
	field :status, :type => Integer
	field :lat, :type => String
	field :long, :type => String
	attr_accessible :name, :description, :status, :lat, :long

	# validations
	#
	validates_presence_of :name, :lat, :long
end
