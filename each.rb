map_numbers = [1,2,3,4,5,6,7,8,9,10]
total = 0

# 単数形の変数をブロック変数として使う
map_numbers.each do |number|
  total += number
end

puts total

items = ["コーヒー", "紅茶", "ジュース"]

items.each do |item|
  puts "#{item}を飲みます"
end

map_numbers.each { |number| puts number}

items.each.with_index() do |item, index|
  puts "#{index}: #{item}を飲みます"
end


items.each.with_index(1) do |item, index|
  puts "#{index}: #{item}を飲みます"
end
