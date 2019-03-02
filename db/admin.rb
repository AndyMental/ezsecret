this_user = User.create!(first: "standard", last: "user", email: "standard_user@testing.com",password: "password123")
puts "user with email #{this_user.email} limited to view only rights is created."
