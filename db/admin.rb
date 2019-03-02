SecretCode.create!(code: "MASTERCODE")
SecretCode.create!(code: "ADMINCODE")
Role.create!(name: "admin")
this_user = User.create!(first: "standard", last: "user", email: "standard_user@testing.com", password: "password123", password_confirmation: "password123", code: "MASTERCODE")
puts "user with email #{this_user.email} limited to view only rights is created."
this_user = User.create!(first: "admin", last: "user", email: "admin@testing.com", password: "password", password_confirmation: "password", code: "ADMINCODE")
this_user.roles << Role.first
puts "user with email #{this_user.email} limited to admin rights is created."
