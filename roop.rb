# break/nextでループを制御

numbers = [1,2,3,4,5]
numbers.each do |number|
  break if number == 3
  puts number
end

numbers.each do |number|
  next if number == 3
  puts number
end
