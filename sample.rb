# p ["コーヒー", "カフェラテ"]

# drinks = ["コーヒー", "カフェラテ", "モカ"]
# p drinks[1]
# p drinks.first
# p drinks.last

# p ["コーヒー", "カフェラテ"].push("モカ")
# p [2, 3].unshift(1)

# p [1, 2] + [3, 4]

# p ["ティーラテ", "カフェラテ", "抹茶ラテ"]

# drinks = ["ティーラテ", "カフェラテ", "抹茶ラテ"]
# drinks.each do |drink|
#   puts drink + "お願いします"
# end

# numbers = [1, 2, 3]
# sum = 0
# numbers.each do |num|
#   sum += num
# end
# p sum

# [].each do |x|
#   puts x
# end

# p numbers.sum

questions = ["apple", "strawberry", "cherry", "persimmon", "pumpkin", "carrot", "watermelon", "pear", "tomato", "persimmon", "eggplant"]
question = questions.sample
answer = ""

index = 0
question.size.times do
  answer += "_"
  index += 1
end

life = 5
index = 0
target_numbers = []
while life >= 1
  puts "現在のライフ#{life}"
  puts "#{answer}"
  input = gets.chomp
  input = input.downcase
  if input.size > 1
    puts "入力できるのは1文字です。"
    next
  end
  unless ('a'..'z').include?(input)
    puts "入力できるのはアルファベットのみです。"
    next
  end
  while question.size > index
    target_numbers.push(index) if question[index] == input
    index += 1
  end
  index = 0
  unless target_numbers.empty?
    target_numbers.each do |num|
      answer[num] = input
    end
    target_numbers = []
    unless answer.include?("_")
      puts "クリア！"
      break
    end
  else
    life -= 1
  end
end

puts "正解は#{question}でした！"