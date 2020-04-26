puts "cleaning up database"
Restaurant.destroy_all
puts 'database is clean'

puts 'Creating Restaurants'
100.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: rand(1..5)
    )
  puts "Restaurant #{restaurant.id} is created"
end

puts "done"
