hash = {:coffee => 300, :caffe_latte => 400}
p hash.class
p Hash.new

class CaffeLatte
end

p CaffeLatte.new.class

class Item
  def name
    "チーズケーキ"
  end
end
item = Item.new
p item.name


class Item
  def name=(text)
    @name = text
  end

  def name
    @name
  end
end

item = Item.new
p item.name = "チーズケーキ"

class Item
  def initialize
    puts "商品を扱うオブジェクト"
  end
end

p Item.new

class Item
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

item1 = Item.new("マフィン")
item2 = Item.new("スコーン")

p item1.name
p item2.name

class Drink
  def self.todays_special
    "ホワイトモカ"
  end
end

class Food < Item
end

food = Food.new
p food.name = "チーズケーキ"
p food.name
