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
	
end
World(FormSubmissionHelpers)