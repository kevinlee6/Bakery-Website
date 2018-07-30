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
  attr_accessor :img, :desc, :price

  def initialize(img, desc, price)
    @img = img
    @desc = desc
    @price = price
  end
end

class Cookie < BakedGoods
  def initialize(img, desc, price)
    super
  end
end

class Cake < BakedGoods
  def initialize(img, desc, price)
    super
  end
end

class Muffin < BakedGoods
  def initialize(img, desc, price)
    super
  end
end