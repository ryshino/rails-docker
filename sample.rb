def order
  puts "カフェラテください"
end

order

def area(x)
  x * x
end

puts area(3)

def dice
  [1, 2, 3, 4, 5, 6].sample
end

puts dice

def order(item)
  "#{item}ください"
end

puts order("カフェラテ")
puts order("モカ")

def dice_core
  [1, 2, 3, 4, 5, 6].sample
end
def dice
  result = dice_core
  return result unless result == 1

  puts "もう一回！"
  dice_core
end

puts dice

def price(item, size = "ショート")
  items = {"コーヒー" => 300, "カフェラテ" => 400}
  sizes = {"ショート" => 0, "トール" => 50, "ベンティ" => 100}
  items[item] + sizes[size]
end

puts price("コーヒー")
puts price("カフェラテ", "トール")

def order(drink)
  puts "#{drink}"
end

order("コーヒー")