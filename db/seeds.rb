# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# rails db:drop
# rails db:create
# rails dm:migrate
# rails db:seed

User.destroy_all
Item.destroy_all
Category.destroy_all
Cart.destroy_all
# Appointment.destroy_all

# # Category.create(category_name: "")

Category.create(category_name: "Coat")
Category.create(category_name: "Pants")
Category.create(category_name: "Top")
Category.create(category_name: "Dress")
Category.create(category_name: "Skirt")
Category.create(category_name: "Hat")
Category.create(category_name: "Bag")
puts "Categories seeded!"

# User.create(name: "", email: "", password: "", location: "", img: "", admin:)
natali = User.create(name: "Natali Kuk", email: "somerandom@email.com", password: "password", location: "Sammamish", img: "https://cdn2.iconfinder.com/data/icons/people-2-2/128/Female-Avatar-User-Woman-Customer-512.png", admin: true)
asley = User.create(name: "Ashley", email: "ashleys_email@email.com", password: "password", location: "Bellevue", img: "https://cdn2.iconfinder.com/data/icons/people-2-2/128/Female-Avatar-User-Woman-Customer-512.png", admin: false)
bella = User.create(name: "Bella White", email: "bellabell@email.com", password: "password", location: "Seattle", admin: false, img: "https://cdn2.iconfinder.com/data/icons/people-2-2/128/Female-Avatar-User-Woman-Customer-512.png", admin: false)
puts "Users Seeded"

# Item.create(name: "", img: "", size: "", brand: "", price:  , color: "", condition: "", details: "", status: "available")
Item.create(name: "Belted Toggle Wrap Coat", size: "10", brand: "Calvin Klein", price: 70 , color: "Gray", condition: "Lightly Worn", details: "Pull your look together in this classic wrap coat from Calvin Klein, designed with a belted closure and a stylish shawl collar. Material: Wool/polyester/nylon/acrylic; lining: polyester", img: "https://cdn-images-1.medium.com/max/1440/1*nvp0wCXtXn0NXaKWZFoX9A.jpeg", category_id: 1 )
puts "Item seeded!"
Item.create(name: "High-Collar Wool Coat", img: "https://miro.medium.com/max/5443/1*-uDeP2y52_2qjbRZgwUWnA.jpeg", size: "Large", brand: "DKNY", price: 40, color: "Red", condition: "Lightly Worn", details: "A gleaming asymmetrical front zipper lends a little edge to this belted coat from DKNY. Shell: wool/polyester/nylon/acrylic; lining: polyester", category_id: 1 )
Item.create(name: "Nike Sportswear Leggings", img: "https://miro.medium.com/max/5443/1*8PZJx6bW_spDx7Kp_ksW9w.jpeg", size: "Medium", brand: "Nike", price: 20 , color: "Black", condition: "New", details: "Slip into high-waisted coverage with the Nike Sportswear Club Leggings. Featuring a bold Swoosh design. They're crafted for all-day comfort. Tight fit for a body-hugging feel. 61% cotton/33% polyester/6% spandex.", category_id: 2)
Item.create(name: "Little Black Dress", img: "https://miro.medium.com/max/5443/1*RgsQhMTEPNlMAjqE_Yof-Q.jpeg", size: "4", brand: "Cinq a Sept", price: 120 , color: "Black", condition: "Lightly Worn", details: "Off-the-shoulder midi dress with ruffled hem. Hidden zipper on back. 69% Triacetate 31% Polyester.", category_id: 4)
Item.create(name: "White Workout Tank", img: "https://miro.medium.com/max/5443/1*ldXKPZTwUX9GfJVYGxiOKw.jpeg", size: "Medium", brand: "Nike", price: 10 , color: "White", condition: "New", details: "Constructed from breathable jersey fabric, the Nike Air Tank helps keep you cool while you conquer your miles. The Nike Air detail lends an iconic look, while stretch fabric and wide armholes let you move naturally during runs. 79% polyester/21% spandex.", category_id: 3)

# Cart.create(total: , user_id: , item_id: , complete: )
cart1 = Cart.create(user_id: 2, item_id: 2)
cart2 = Cart.create(total: 70, user_id: 2, item_id: 1, complete: true)
puts "Cart seeded!"

# # ItemCategory.create(item_id: , category_id: )
# ItemCategory.create(item_id: 1, category_id: 1)
# ItemCategory.create(item_id: 2, category_id: 1)
# ItemCategory.create(item_id: 3, category_id: 2)
# ItemCategory.create(item_id: 4, category_id: 4)
# ItemCategory.create(item_id: 5, category_id: 3)