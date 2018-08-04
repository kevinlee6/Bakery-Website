require_relative 'class.rb'

# id will be useful during clickHandler()
id = -1

# num of products per category
num = 6

@cookies = [
  Cookie.new(id += 1, "/media/cookie-#{id % num}.jpg", 'Legend of Zelda Cookies', '2.00'),
  Cookie.new(id += 1, "/media/cookie-#{id % num}.jpg", 'Peanut Butter / Chocolate Cookies', '1.50'),
  Cookie.new(id += 1, "/media/cookie-#{id % num}.jpeg", 'Assorted Cookies (Pack of 4)', '3.00'),
  Cookie.new(id += 1, "/media/cookie-#{id % num}.jpg", 'Sesame Street Cookies', '2.00'),
  Cookie.new(id += 1, "/media/cookie-#{id % num}.jpg", 'Heart Cookies', '2.00'),
  Cookie.new(id += 1, "/media/cookie-#{id % num}.jpg", 'Star Wars Cookies', '2.00')
]

@cakes = [
  Cake.new(id += 1, "/media/cake-#{id % num}.png", 'Purple Floral Block Cake', '25.00'),
  Cake.new(id += 1, "/media/cake-#{id % num}.jpeg", 'White Floral Round Cake', '30.00'),
  Cake.new(id += 1, "/media/cake-#{id % num}.jpeg", 'Blue Floral Spiral Cake', '25.00'),
  Cake.new(id += 1, "/media/cake-#{id % num}.jpeg", 'Quartz Cake', '35.00'),
  Cake.new(id += 1, "/media/cake-#{id % num}.jpeg", 'White Floral Cake (extra floral)', '35.00'),
  Cake.new(id += 1, "/media/cake-#{id % num}.jpg", 'Orange Ombre Cake', '30.00')
]

@muffins = [
  Muffin.new(id += 1, "/media/muffin-#{id % num}.jpg", 'Chocolate Muffin', '2.50'),
  Muffin.new(id += 1, "/media/muffin-#{id % num}.jpg", 'Blueberry Muffin', '2.50'),
  Muffin.new(id += 1, "/media/muffin-#{id % num}.jpg", 'Stormtrooper Muffin', '3.50'),
  Muffin.new(id += 1, "/media/muffin-#{id % num}.jpg", 'Avengers Muffin', '3.50'),
  Muffin.new(id += 1, "/media/muffin-#{id % num}.jpg", 'Strawberry Oreo Muffin', '3.00'),
  Muffin.new(id += 1, "/media/muffin-#{id % num}.jpg", 'Avengers Muffin (alt style)', '3.50')
]