10.times do |u|
  User.create!(first_name: "FirstName#{u}", last_name: "LastName#{u}", email: "email#{u}@email.com", password: "asdfasdf")
end 

puts "10 users created"

user_ids = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
names = ["Sam", "Bob", "Gary", "Deven", "Amanda", "Chuck", "Jana", "Derek", "Chad", "Briggs"]

25.times do |c|
  Contact.create!(name: names.sample, address: "address#{c}", email: "email#{c}@email.com", phone: "1234567892", user_id: user_ids.sample)
end

puts "25 contacts created"