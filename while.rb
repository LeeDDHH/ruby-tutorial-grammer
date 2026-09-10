count = 1
while count <= 3
  puts "#{count}目の繰り返しです"
  count += 1
end

count2 = 1
while true
  puts count2
  break
end

count3 = 1
while true
  puts count3
  break if count3 >= 3
  count3 += 1
end
