# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
Review.create(user: user1, product: product1, star_rating: 4, comment: "Great product!")
Review.create(user: user1, product: product2, star_rating: 3, comment: "average!")
Review.create(user: user1, product: product3, star_rating: 5, comment: "supab!")
Review.create(user: user1, product: product4, star_rating: 1, comment: "Poor quality!")
Review.create(user: user1, product: product5, star_rating: 2, comment: "Not enough!")
Review.create(user: user2, product: product1, star_rating: 3, comment: "Good product!")
Review.create(user: user2, product: product2, star_rating: 4, comment: "average!")
Review.create(user: user2, product: product3, star_rating: 5, comment: "supab!")
Review.create(user: user2, product: product4, star_rating: 2, comment: "Poor")
Review.create(user: user2, product: product5, star_rating: 3, comment: "Enough!")
Review.create(user: user3, product: product1, star_rating: 1, comment: "I hate it!")
Review.create(user: user3, product: product2, star_rating: 4, comment: "good!")
Review.create(user: user3, product: product3, star_rating: 1, comment: "poor!")
Review.create(user: user3, product: product4, star_rating: 5, comment: "Well done!")
Review.create(user: user3, product: product5, star_rating: 3, comment: "Average!")
Review.create(user: user4, product: product1, star_rating: 3, comment: "average!")
Review.create(user: user4, product: product2, star_rating: 3, comment: "average!")
Review.create(user: user4, product: product3, star_rating: 3, comment: "average!")
Review.create(user: user4, product: product4, star_rating: 3, comment: "average!")
Review.create(user: user4, product: product5, star_rating: 3, comment: "average!")
Review.create(user: user5, product: product1, star_rating: 2, comment: "average!")
Review.create(user: user5, product: product2, star_rating: 1, comment: "I'm disappointed!")
Review.create(user: user5, product: product3, star_rating: 4, comment: "Can do  better!")
Review.create(user: user5, product: product4, star_rating: 3, comment: "average!")
Review.create(user: user5, product: product5, star_rating: 5, comment: "Excellent!")

puts "Seeding done!"