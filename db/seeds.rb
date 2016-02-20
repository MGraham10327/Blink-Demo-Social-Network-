# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 usernames = ["Pinkpiggy24", "PurpleReign", "Tinnaaaaaaaaa", "Tia Valentine", "Bae"]
 email_array =["Tester1@yahoo.com", "Tester2@yahoo.com", "Tester3@yahoo.com", "Tester4@yahoo.com", "Tester5@yahoo.com"]
5.times do |x|
 	User.create(username: usernames[x], email: email_array[x], password: "password", password_confirmation: "password")
end
 p "Test users created"