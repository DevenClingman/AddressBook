10.times do |u|
  User.create!(first_name: "FirstName#{u}", last_name: "LastName#{u}", email: "email#{u}@email.com", password: "asdfasdf")
end 

puts "10 users created"