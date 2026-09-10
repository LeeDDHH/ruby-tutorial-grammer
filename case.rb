score = 90

# 範囲を使った条件分岐
case score
when 90..100
  puts "大変優秀な成績です"
when 80..89
  puts "優秀な成績です"
when 70..79
  puts "良い成績です"
when 60..69
  puts "合格です"
else
  puts "不合格です"
end


case score
when 90..100 then puts "大変優秀な成績です"
when 80..89 then puts "優秀な成績です"
when 70..79 then puts "良い成績です"
when 60..69 then puts "合格です"
else puts "不合格です"
end

# 複数の条件を書く
month = 7

case month
when 3,4,5 then puts "春です"
when 6,7,8 then puts "夏です"
when 9,10,11 then puts "秋です"
when 12,1,2 then puts "冬です"
else puts "無効な月です"
end
