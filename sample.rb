require_relative 'module'

class Drink
  include WhippedCream
  include ChocolateChip

  def initialize(name)
    @name = name
  end

  def name
    @name    
  end
end

class Cake
  include WhippedCream
  def initialize(name)
    @name = name
  end

  def name
    @name    
  end
end

drink = Drink.new("モカ")
# drink.whipped_cream
drink.chocolate_chip
puts drink.name

cake = Cake.new("モンブラン")
cake.whipped_cream
puts cake.name

puts EspressoShot::Price
puts WhippedCream.info