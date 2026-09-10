score = 70

if score > 80
  puts "合格です"
elsif score > 60
  puts "再試験です"
else
  puts "不合格です"
end

score_math = 85

# if文の逆で、「〜でないとき」という条件を表す
unless score_math < 50
  puts "合格です"
end

# 上と同じ意味
if score_math >= 50
  puts "合格です"
end

score_history = 49

# 修飾子としてのif/unless
puts "合格です" if score_history >= 80

puts "不合格です" unless score_history >= 50
