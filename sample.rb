menu1 = {coffee: 300, caffe_latte: 400}
p menu1[:caffe_latte]

menu2 = {"モカ" => "チョコレートシロップとミルク入り", "カフェラテ" => "ミルク入り"}
p menu2["モカ"]

menu1[:tea] = 300
p menu1
menu1.delete(:coffee)
p menu1

menu1.delete(:tea)
menu1.default = "紅茶はありませんか？"
p menu1[:tea]

p "カフェラテください" if menu1[:caffe_latte] <= 500

menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do |key, value|
  puts "#{key} - #{value}円"
end
p "~~~~~"
menu.each do |key, value|
  puts "#{key} - #{value}円" if value >= 350
end

p menu = {}
menu.each do |key, value|
  puts "#{key} - #{value}円"
end

arr = []
menu.each_key do |key|
  arr.push(key)
end

p arr

arr = "caffelatte".chars
hash = {}
hash.default = 0
arr.each do |chr|
  hash[chr] += 1
end

p hash.keys