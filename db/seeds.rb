# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new
u.user_name = "admin"
u.email = "admin@gmail.com"
u.password = "123456"
u.password_confirmation = "123456"
u.is_admin = true
u.save
puts "1 admin user created"

products_title = ["Tesla", "BMW", "Benz", "Porsche"]
products_category = ["car","car","car","car"]
products_description = ["最牛的电动汽车", "罗振宇跨年演讲顶级赞助商", "德国品质，值得信赖", "目前最具设计美感的汽车"]
products_storage = [30,30,30,30]
products_price = [100000,100000,100000,100000]
products_image_path = ["car/tesla.png", "car/bmw.jpg", "car/benz.jpg", "car/porsche.jpg"]
products_image_medium_path = ["car/medium_tesla.png", "car/medium_bmw.jpg", "car/medium_benz.jpg", "car/medium_porsche.jpg"]
products_image_thumb_path = ["car/thumb_tesla.png", "car/thumb_bmw.jpg", "car/thumb_benz.jpg", "car/thumb_porsche.jpg"]

create_products = for i in 1..4 do
Product.create!([title: products_title[i - 1],
 description: products_description[i - 1],
 storage: products_storage[i - 1],
 price: products_price[i - 1],
 category: products_category[i-1],
 image_path: products_image_path[i-1],
 image_medium_path: products_image_medium_path[i - 1],
 image_thumb_path: products_image_thumb_path[i - 1]])
 
end
puts "5 products created."

products_title = ["未来简史", "JavaScript权威指南", "Ruby基础教程", "失控"]
products_category = ["book","book","book","book"]
products_description = ["一本由一个神人历史学家完成的书", "JS最权威的指南", "Ruby最好的入门书籍", "KK最具影响力的著作"]
products_storage = [30,30,30,30]
products_price = [78,120,40,80]
products_image_path = ["book/book-1.jpg","book/book-2.jpg","book/book-3.jpg","book/book-4.jpg"]
products_image_medium_path = ["book/medium_book-1.jpg","book/medium_book-2.jpg","book/medium_book-3.jpg","book/medium_book-4.jpg"]
products_image_thumb_path = ["book/thumb_book-1.jpg","book/thumb_book-2.jpg","book/thumb_book-3.jpg","book/thumb_book-4.jpg"]


create_products = for i in 1..4 do
Product.create!([title: products_title[i - 1],
 description: products_description[i - 1],
 storage: products_storage[i - 1],
 price: products_price[i - 1],
 category: products_category[i-1],
 image_path:products_image_path[i-1],
 image_medium_path: products_image_medium_path[i - 1],
 image_thumb_path: products_image_thumb_path[i - 1]   ])
end
puts "5 products created."

products_title = ["20年拉菲", "50年拉菲", "30年纳帕河谷", "70年木桐"]
products_category = ["wine","wine","wine","wine"]
products_description = ["稀世红酒", "极品红酒", "阳光丰富地带精选葡萄酒", "只给尊贵的你"]
products_storage = [30,30,30,30]
products_price = [5000,10000,6000,18000]
products_image_path = ["wine/wine-1.jpg","wine/wine-2.jpg","wine/wine-3.jpg","wine/wine-4.jpg"]
products_image_medium_path = ["wine/medium_wine-1.jpg","wine/medium_wine-2.jpg","wine/medium_wine-3.jpg","wine/medium_wine-4.jpg"]
products_image_thumb_path = ["wine/thumb_wine-1.jpg","wine/thumb_wine-2.jpg","wine/thumb_wine-3.jpg","wine/thumb_wine-4.jpg"]

create_products = for i in 1..4 do
Product.create!([title: products_title[i - 1],
 description: products_description[i - 1],
 storage: products_storage[i - 1],
 price: products_price[i - 1],
 category: products_category[i-1],
 image_path:products_image_path[i-1],
 image_medium_path: products_image_medium_path[i - 1],
 image_thumb_path: products_image_thumb_path[i - 1]   ])
end
puts "5 products created."

products_title = ["斑马纹短裙", "红色连衣裙", "经典长裙", "白色小西服"]
products_category = ["dress","dress","dress","dress"]
products_description = ["好看！", "好美！", "经典！", "职业！"]
products_storage = [30,30,30,30]
products_price = [78,120,40,80]
products_image_path = ["dress/dress-1.jpg","dress/dress-2.jpg","dress/dress-3.jpg","dress/dress-4.jpg"]
products_image_medium_path = ["dress/medium_dress-1.jpg","dress/medium_dress-2.jpg","dress/medium_dress-3.jpg","dress/medium_dress-4.jpg"]
products_image_thumb_path = ["dress/thumb_dress-1.jpg","dress/thumb_dress-2.jpg","dress/thumb_dress-3.jpg","dress/thumb_dress-4.jpg"]

create_products = for i in 1..4 do
Product.create!([title: products_title[i - 1],
 description: products_description[i - 1],
 storage: products_storage[i - 1],
 price: products_price[i - 1],
 category: products_category[i-1],
 image_path:products_image_path[i-1],
 image_medium_path: products_image_medium_path[i - 1],
 image_thumb_path: products_image_thumb_path[i - 1]   ])
end
puts "5 products created."



