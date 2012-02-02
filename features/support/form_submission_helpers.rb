module FormSubmissionHelpers
	
	def sign_up_new_user(user)
		visit '/users/sign_up'
	  fill_in "Name", :with => user[:name]
	  fill_in "Email", :with => user[:email]
	  fill_in "Password", :with => user[:password]
	  fill_in "Password confirmation", :with => user[:password_confirmation]
	  click_button "Sign up"
	end
	
	def sign_in_user(user)
		visit '/users/sign_in'
	  fill_in "Email", :with => user[:email]
	  fill_in "Password", :with => user[:password]
	  click_button "Sign in"
	end
	
	def create_new_project(project)
		visit '/projects/new'
		fill_in "Name", :with => project[:name]
		fill_in "Description", :with => project[:description]
		select "#{project[:map_type]}", :from => "project_map_type"
		click_button "Add Project"
	end
	
	def edit_current_project(project)
		fill_in "Name", :with => project[:name]
		fill_in "Description", :with => project[:description]
		select "#{project[:pp_map_type]}", :from => "project_map_type"
		click_button "Edit Project"
	end

	def create_new_location(location)
		visit '/locations/new'
		fill_in "Name", :with => location[:name]
		fill_in "Description", :with => location[:description]
		select "#{location[:status]}", :from => "location_status"
		fill_in "Latitude", :with => location[:lat]
		fill_in "Longitude", :with => location[:long]
	end
	
end
World(FormSubmissionHelpers)
