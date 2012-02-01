class Project
  include Mongoid::Document
	MAP_TYPES = {'Road Map' => 'road_map', 'Satellite' => 'satellite', 'Hybrid' => 'hybrid', 'Terrain' => 'terrain'}
	
	attr_accessible :name, :description, :map_type
	# fields for project
	#
	field :name, :type => String
	field :description, :type => String
	field :map_type, :type => String
	field :api_key, :type => String
	# validations
	#
	validates_presence_of :name
	# callbacks
	#
	before_validation :create_api_key
	
	def create_api_key
		Digest::SHA1.hexdigest(Time.now.to_s + rand(12341234).to_s)[1..13]
	end
	
	def pp_map_type
		Project::MAP_TYPES.index("#{self.map_type}")
	end
	
end
