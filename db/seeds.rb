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
# User.create(id: 1, name: "Natali Kru", email: "natasha_505@yahoo.com", password: "", location: "Sammamish", img: "", admin: true)
# User.create(id: 2, name: "Natali K", email: "tashtash555@gmail.com", password: "passw0rd", location: "Sammamish", img: "https://cdn2.iconfinder.com/data/icons/people-2-2/128/Female-Avatar-User-Woman-Customer-512.png", admin: false)


# asley = User.create(name: "Ashley", email: "ashleys_email@email.com", password: "password", location: "Bellevue", img: "https://cdn2.iconfinder.com/data/icons/people-2-2/128/Female-Avatar-User-Woman-Customer-512.png", admin: false)
# bella = User.create(name: "Bella White", email: "bellabell@email.com", password: "password", location: "Seattle", admin: false, img: "https://cdn2.iconfinder.com/data/icons/people-2-2/128/Female-Avatar-User-Woman-Customer-512.png", admin: false)
# puts "Users Seeded"

# Item.create(name: "", img: "", size: "", brand: "", price:  , color: "", condition: "", details: "", status: "available")
Item.create(name: "Belted Toggle Wrap Coat", size: "10", brand: "Calvin Klein", price: 70 , color: "Gray", condition: "Lightly Worn", details: "Pull your look together in this classic wrap coat from Calvin Klein, designed with a belted closure and a stylish shawl collar. Material: Wool/polyester/nylon/acrylic; lining: polyester", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/1_nvp0wCXtXn0NXaKWZFoX9A.jpeg", category_id: 1 )

Item.create(name: "High-Collar Wool Coat", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/1_-uDeP2y52_2qjbRZgwUWnA.jpeg
  ", size: "Large", brand: "DKNY", price: 40, color: "Red", condition: "Lightly Worn", details: "A gleaming asymmetrical front zipper lends a little edge to this belted coat from DKNY. Shell: wool/polyester/nylon/acrylic; lining: polyester", category_id: 1 )

Item.create(name: "Nike Sportswear Leggings", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/1_8PZJx6bW_spDx7Kp_ksW9w.jpeg", size: "Medium", brand: "Nike", price: 20 , color: "Black", condition: "New", details: "Slip into high-waisted coverage with the Nike Sportswear Club Leggings. Featuring a bold Swoosh design. They're crafted for all-day comfort. Tight fit for a body-hugging feel. 61% cotton/33% polyester/6% spandex.", category_id: 2)

Item.create(name: "Little Black Dress", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/1_RgsQhMTEPNlMAjqE_Yof-Q.jpeg", size: "4", brand: "Cinq a Sept", price: 120 , color: "Black", condition: "Lightly Worn", details: "Off-the-shoulder midi dress with ruffled hem. Hidden zipper on back. 69% Triacetate 31% Polyester.", category_id: 4)

Item.create(name: "White Workout Tank", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/1_ldXKPZTwUX9GfJVYGxiOKw.jpeg", size: "Medium", brand: "Nike", price: 10 , color: "White", condition: "New", details: "Constructed from breathable jersey fabric, the Nike Air Tank helps keep you cool while you conquer your miles. The Nike Air detail lends an iconic look, while stretch fabric and wide armholes let you move naturally during runs. 79% polyester/21% spandex.", category_id: 3)

Item.create(name: "Draped Moto Blazer", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190415_130440.jpg", size: "Medium", brand: "Nicole by Nicole Miller", price: 30, color: "Blue", condition: "Like New", details: "Beautiful blazer. Draped open front. Features zipper pockets and zipper sleeves. Fully lined. Bright color for spring.", category_id: 3)

Item.create(name: "Teal Blazer", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190415_130400.jpg", size: "10", brand: "Attention", price: 15 , color: "Teal", condition: "Like New", details: "Create a cute, springy suited look with this women's Attention blazer. This jacket lends layering that's ready for work and play, thanks to the bright color design  and modern design. Woven fabric stays classic and crisp.", category_id: 3)

Item.create(name: "Halogen Light Pink Blazer", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190415_131711.jpg", size: "", brand: "Halogen", price: 40, color: "Pink", condition: "Like New", details: "Sharpen up the look of whatever outfit you've chosen with this trendy with no-button open blazer.", category_id: 3)

Item.create(name: "Curve Open Front Shawl Collar Blazer", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190415_131842.jpg", size: "10", brand: "CeCe", price: 50 , color: "White", condition: "Lightly Worn", details: "Made from nicely weighted crepe, this smartly styled open-front blazer features a sleek shawl collar and a curved hem that's shorter in back for a fashionably cool look. 100% polyester. Hand wash cold, line dry.", category_id: 3)

Item.create(name: "Double-Breasted Military Jacket", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190415_132001.jpg", size: "Large", brand: "Unknown", price: 45 , color: "White", condition: "Like New", details: "Decorative buttons elevate the professional style of this raised collar jacket. 100% Cotton.", category_id: 3)

Item.create(name: "Boyfriend Blazer Red", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190415_132354.jpg", size: "Medium", brand: "Belle+Sky", price: 20 , color: "Red", condition: "Like New", details: "A comfy open-front style. This easygoing blazer set with rollable sleeves and cut in a relaxed fit.", category_id: 3)

Item.create(name: "Capelet Sheath Dress", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190417_173224.jpg", size: "6", brand: "Calvin Klein", price: 45 , color: "Pink", condition: "Like New", details: "Give your look instant sophistication with this chic sheath dress from Calvin Klein, designed with romantic fluttery capelet sleeves.", category_id: 4 )

Item.create(name: "Nautical Dress", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190417_174736.jpg", size: "Medium", brand: "Ralph Lauren", price: 30, color: "Blue", condition: "Like New", details: "Make a statement in Lauren Ralph Lauren's dress, which is decorated with nautical-inspired stripes. Rounded neckline. Ruffled short sleeves. ", category_id: 4)

Item.create(name: "Jersey Dress", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190417_175001.jpg", size: "Medium", brand: "Ralph Lauren", price: 35 , color: "Blue", condition: "Like New", details: "Lauren Ralph Lauren's timeless jersey sheath dress is enhanced by a contrast white striped cuffs. Crafted from cotton, for a smart look.", category_id: 4)

Item.create(name: "Floral Silk Dress", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190417_175133.jpg", size: "Medium", brand: "Saint Laurent", price: 120 , color: "Blue", condition: "Lightly Worn", details: "Ethereal silk-blend mini dress with a rich metallic floral and a sheer look. Dry clean.", category_id: 4)

Item.create(name: "Big Floral Sheath Dress", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190417_175320.jpg", size: "8", brand: "Calvin Klein", price: 45 , color: "Pink", condition: "Lightly Worn", details: "We like our blooms big and super bright, like this high-energy version of the sheath dress by Calvin Klein.", category_id: 4 )

Item.create(name: "Striped Dress Shirt", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190418_233141.jpg", size: "Large", brand: "INC", price: 15 , color: "Black", condition: "Good", details: "A hidden placket polishes this shirt from INC International Concepts, a timeless look updated with wide stripes. Machine washable", category_id: 3 )

Item.create(name: "Striped Dress Shirt", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190418_233241.jpg", size: "Large", brand: "INC", price: 30 , color: "White", condition: "Like New", details: "Button up your look in I.N.C. International Concepts' classic striped business shirt turned breezy maxi dress style shirt.", category_id: 3)

Item.create(name: "", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190419_001901.jpg", size: "Large", brand: "Alberto Makali", price: 40 , color: "Black", condition: "Like New", details: "The classic crewneck comes alive with allover sequin sparkle in Alberto Makali's top that dazzles during the day and lights up the night. Dry clean.", category_id: 3)

Item.create(name: "Sequined Sleeveless Top", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190419_002116.jpg", size: "Medium", brand: "BCBG", price: 15 , color: "Black", condition: "Good", details: "A day or night essential, this top features a crew-neck with padded shoulders which are sequine embelished. 100% Polyester.", category_id: 3)

Item.create(name: "Allie Striped Cotton Shirt", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190419_002840.jpg", size: "Large", brand: "Rag & Bone", price: 150 , color: "Blue", condition: "Good", details: "Update your essentials edit with Rag & Bone's Allie blue and white striped shirt. Taking inspiration from a classic menswear silhouette, this button-down design is complete with a mandarin collar and oversized cuffs. We like how this piece looks teamed with tailored trousers and skinny jeans alike. 100% Cotton.", category_id: 3)

Item.create(name: "Crewnewck Top With Cinched Sleeves", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190419_003013.jpg", size: "Medium", brand: "DKNY", price: 20 , color: "Blue", condition: "Lightly Worn", details: "A statement sleeve never disappoints. The dramatic ruched detailing at bell sleeve adds texture and dimension to boast a luxe and dynamic attitude to your workweek wardrobe. Cotton. Machine wash cold.", category_id: 3)

Item.create(name: "Kate Spade Botton Up Blouse", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190419_003946.jpg", size: "Medium", brand: "Kate Spade", price: 45 , color: "Pink", condition: "Lightly Worn", details: "This lush blush pink botton up blouse detailed with gold thread is perfect for any occasion. From work to play. Machine wash cold.", category_id: 3 )

Item.create(name: "Bar III Cropped Asymetrical Blazer", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190415_133406.jpg", size: "Medium", brand: "Bar III", price: 40 , color: "Black", condition: "Like New", details: "A sleek update on a classic, this Bar III jacket applies a stylish crop to a traditional double-breasted silhouette, with a biker-jacket feel. Machine wash cold.", category_id: 3)

Item.create(name: "French Terry Military Jacket", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190415_134430.jpg", size: "Medium", brand: "Ralph Lauren", price: 45 , color: "Blue", condition: "Like New", details: "A modern take on military wear, this cropped cotton French terry jacket from Denim & Supply Ralph Lauren is detailed with buttoned velvet lapels and tailored for a slim, feminine fit.", category_id: 3)

Item.create(name: "Collarless Long Sleeved Blouse", img: "https://shafa-closet.s3-us-west-2.amazonaws.com/20190419_005853.jpg", size: "10", brand: "Laundry", price: 35, color: "Black", condition: "Like New", details: "Enrich your wardrobe with a smooth satin top featuring a split collar with tie closure. Machine wash cold.", category_id:3 )

# Item.create(name: "", img: "", size: "", brand: "", price:  , color: "", condition: "", details: "", category_id: )













# Cart.create(total: , user_id: , item_id: , complete: )
# Cart.create(user_id: 1, item_id: 2)
# Cart.create(total: 70, user_id: 1, item_id: 1, complete: true)
# Cart.create(total: 100, user_id: 1, item_id: 3, complete: true)
# Cart.create(user_id: 2, item_id: 4)
puts "Cart seeded!"

# # ItemCategory.create(item_id: , category_id: )
# ItemCategory.create(item_id: 1, category_id: 1)
# ItemCategory.create(item_id: 2, category_id: 1)
# ItemCategory.create(item_id: 3, category_id: 2)
# ItemCategory.create(item_id: 4, category_id: 4)
# ItemCategory.create(item_id: 5, category_id: 3)