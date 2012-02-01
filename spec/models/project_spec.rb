require 'spec_helper'

describe Project do
	before(:each) do
    @attr = { 
      :name => "My Special Project",
      :description => "This is my new special project.",
      :map_type => "hybrid"
    }
  end

	it "should create a new project" do
		Project.create!(@attr)
	end
	
	it "should fail to create a project without a name" do
		no_project_name = Project.new(@attr.merge(:name => ""))
    no_project_name.should_not be_valid
	end
	
	it "should generate a API key for the project" do
		project = Project.create!(@attr)
		project.api_key.should_not eq(nil)
	end
	
	describe "function: create_api_key" do
		
		it "should set the api_key for a project" do
			project = Project.new(@attr)
			project.create_api_key
			project.api_key.should_not eq(nil)
		end
		
	end
	
end
