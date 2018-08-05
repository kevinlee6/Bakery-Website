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

class BakedGoods
  # might want to add methods later on
  attr_reader :id
  attr_accessor :img, :desc, :price, :quantity

  def initialize(id, img, desc, price)
    @id = id
    @img = img
    @desc = desc
    @price = price
    @quantity = 1
  end
end

class Cookie < BakedGoods
end

class Cake < BakedGoods
end

class Muffin < BakedGoods
end