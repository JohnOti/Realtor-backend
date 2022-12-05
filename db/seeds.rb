# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "🌱 Seeding data..."

# Make 10 users
15.times do
    user = User.create(username: Faker::Name.name, email: Faker::Internet.free_email, location: Faker::Address.city, phone_number: Faker::PhoneNumber.cell_phone_in_e164, professional_status: Faker::Boolean.boolean)
end


property1=Property.create(name: "Runda", value: 40, location: "Ruaka", img_url:"https://miro.medium.com/max/1400/1*FyZktqFMhrQD3swFaNun2g.jpeg", description: "Elegant Art Deco Home with Garden in Ruaka." )
property2=Property.create(name: "Parklands", value: 50, location: "Westlands", img_url:"https://stavica.com/wp-content/uploads/2019/05/11.jpg", description: "The reader is given information about why the location is ideal" )
property3=Property.create(name: "Kitusuri", value: 45, location: "Westlands", img_url:"https://uploads-ssl.webflow.com/5b0d1c0f502061641c1592c5/5b87f3eb7ae6c8f21b6f8cfd_0_ULiiLorLLRG5pY46.jpg", description: "We are encouraged to imagine ourselves in the space ." )
property4=Property.create(name: "Kileleshwa", value: 60, location: "Nairobi", img_url:"https://stavica.com/wp-content/uploads/2019/05/11.jpg", description: "Expectations are managed well by the host within the first few lines." )
property5=Property.create(name: "Lavington", value: 47, location: "Nairobi", img_url:"https://miro.medium.com/max/1400/1*FyZktqFMhrQD3swFaNun2g.jpeg", description: "The surrounding area’s natural beauty is highlighted as a selling point." )
property6=Property.create(name: "Kilimani", value: 46, location: "Kileleshwa", img_url:"https://stavica.com/wp-content/uploads/2019/05/ghh.jpg", description: "The convenience of location is highlighted. " )
property7=Property.create(name: "Muthaiga", value:80, location: "Ruaraka", img_url:"https://stavica.com/wp-content/uploads/2019/05/ghh.jpg", description: "It paints a vivid picture with words ." )
property5=Property.create(name: "Lavington", value: 47, location: "Nairobi", img_url:"https://miro.medium.com/max/1400/1*FyZktqFMhrQD3swFaNun2g.jpeg", description: "The fairy-tale language matches the images perfectly." )
property5=Property.create(name: "Lavington", value: 47, location: "Nairobi", img_url:"https://miro.medium.com/max/1400/1*FyZktqFMhrQD3swFaNun2g.jpeg", description: "Forest-and-Heaven Themed Apartment close to the Heart of the CBD." )
property8=Property.create(name: "Karen", value: 90, location: "Kajiado", img_url:"https://uploads-ssl.webflow.com/5b0d1c0f502061641c1592c5/5b87f3eb7ae6c8f21b6f8cfd_0_ULiiLorLLRG5pY46.jpg", description: "Romantic Stone House with Ocean Views. " )
property9=Property.create(name: "Ngong", value: 30, location: "Kajiado", img_url:"https://media.istockphoto.com/id/1221865626/photo/luxurious-modern-house-with-swimming-pool.jpg?s=612x612&w=0&k=20&c=LXH-oj14anTW-Q7WQI7uovp87CTCqBn96zHA2waq-hQ=", description: "Luxury City Center Loft on a Traffic-Free Street." )
property10=Property.create(name: "Rongai", value: 20, location: "Kajiado", img_url:"https://media.istockphoto.com/id/1150278000/photo/modern-white-house-with-swimming-pool.jpg?s=612x612&w=0&k=20&c=5uBhkdER9uGSXKOt_AZjxOXAYjnhxj6b8JCW1UWv2WA=", description: "Unique and Secluded AirShip with Breathtaking Highland Views" )




# 20.times do
#     # create a car with random data
#     car = Car.create(make: Faker::Vehicle.make, model: Faker::Vehicle.model, price: Faker::Commerce.price, image_url: Faker::LoremFlickr.image) #LoremFlickr

#     rand(1..5).times do
#         user = User.order('RANDOM()').first

#         Review.create(
#         score: rand(1..10),
#         comment: Faker::Lorem.sentence,
#         car_id: car.id,
#         user_id: user.id
#         )
#     end
# end

puts "🌱 Done seeding!"