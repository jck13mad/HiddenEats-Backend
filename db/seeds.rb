# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
MenuItem.destroy_all
Comment.destroy_all 

MenuItem.create(name: "4×4", company: "In-N-Out", image: "https://i2.wp.com/www.eatthis.com/wp-content/uploads/2019/10/4x4-burger.jpg?w=1200&ssl=1", description: "Simply order a "4×4" and you'll get this delicious masterpiece, with your favorite toppings and secret sauce included.")
coldBuster = MenuItem.create(name: "Cold Buster", company: "Starbucks", image: "https://i0.wp.com/www.eatthis.com/wp-content/uploads/media/images/ext/224609746/starbucks-secret-orders-cold-buster-instagram.jpg?w=1024&ssl=1", description: "The Cold Buster is made of half steamed lemonade, half hot water, and a teabag each of Jade Citrus Mint green tea and Peach Tranquility herbal tea.")

Comment.create(content: "Wow this is definitely on my list to check out!", menu_item_id: coldBuster.id)
