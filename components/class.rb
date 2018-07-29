class Bakery
  # Parent container for all the products
  attr_reader :name
  attr_accessor :products

  def initialize(name)
    @name = name
    @products = {
      cookies: [],
      cakes: [],
      muffins: []
    }
  end

  def get_product(product)
    @products[product.to_sym]
  end

  def add_to_products(category, obj)
    @products[category.to_sym].push(obj)
  end
end

class Cookie
  def initialize(img, desc, price)
    @img = img
    @description = desc
    @price = price
  end
end

class Cake
  def initialize(img, desc, price)
    @img = img
    @description = desc
    @price = price
  end
end

class Muffin
  def initialize(img, desc, price)
    @img = img
    @description = desc
    @price = price
  end
end