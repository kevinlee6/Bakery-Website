require_relative 'class.rb'

@bakery0 = Bakery.new('Ruby Bakery')

cookies = [
  Cookie.new('../public/media/cookie-0.jpg', 'Legend of Zelda cookies', '2.00'),
  Cookie.new('../public/media/cookie-1.jpg', 'Peanut Butter / Chocolate Cookies', '1.50'),
  Cookie.new('../public/media/cookie-2.jpeg', 'Assorted Cookies (Pack of 4)', '3.00'),
  Cookie.new('../public/media/cookie-3.jpg', 'Sesame Street cookies', '2.00'),
  Cookie.new('../public/media/cookie-4.jpg', 'Heart cookies', '2.00'),
  Cookie.new('../public/media/cookie-5.jpg', 'Star Wars cookies', '2.00')
]

cakes = [
  Cake.new('../public/media/cake-0.png', 'Purple Floral Block Cake', '25.00'),
  Cake.new('../public/media/cake-1.jpeg', 'White Floral Round Cake', '30.00'),
  Cake.new('../public/media/cake-2.jpeg', 'Blue Floral Spiral Cake', '25.00'),
  Cake.new('../public/media/cake-3.jpeg', 'Quartz Cake', '35.00'),
  Cake.new('../public/media/cake-4.jpeg', 'White Floral Cake (extra floral)', '35.00'),
  Cake.new('../public/media/cake-5.jpg', 'Orange Ombre Cake', '30.00')
]

muffins = [
  Muffin.new('../public/media/muffin-0.jpg', 'Chocolate Muffin', '2.50'),
  Muffin.new('../public/media/muffin-1.jpg', 'Blueberry Muffin', '2.50'),
  Muffin.new('../public/media/muffin-2.jpg', 'Stormtrooper Muffin', '3.50'),
  Muffin.new('../public/media/muffin-3.jpg', 'Avengers Muffin', '3.50'),
  Muffin.new('../public/media/muffin-4.jpg', 'Strawberry Oreo Muffin', '3.00'),
  Muffin.new('../public/media/muffin-5.jpg', 'Avengers Muffin (alt style)', '3.50')
]

cookies.each { |x| @bakery0.add_to_products('cookies', x) }
cakes.each { |x| @bakery0.add_to_products('cakes', x) }
muffins.each { |x| @bakery0.add_to_products('muffins', x) }