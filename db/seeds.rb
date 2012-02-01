puts 'EMPTY THE MONGODB DATABASE'
Mongoid.master.collections.reject { |c| c.name =~ /^system/}.each(&:drop)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Technoguru', :email => 'johnathan@jpulos.com', :password => 'password', :password_confirmation => 'password'
puts 'New user created: ' << user.name
