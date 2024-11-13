p ["コーヒー", "カフェラテ"].size

p result = [1, 2, 3, 4, 5].sum

p ["モカ", "カフェラテ", "モカ"].uniq

arr = ["1", "2"]
p arr.clear

p ["モカ", "カフェラテ", "カプチーノ"].sample

p ["大吉", "中吉", "末吉", "凶"].sample

p [100, 50, 300].sort
p [100, 50, 300].sort.reverse

p "cba".reverse

p ["100", "50", "300"].join(",")

p "100,50,300".split(",")

p [1, 2, 3].map {|num| num * 3}

p ["abc", "xyz"].map(&:reverse)

p ["aya", "achi", "Tama"].map(&:downcase).sort

p ["3", "5", "1"].map(&:to_i).sort

p "coffee".to_sym