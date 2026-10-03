# 可変長引数を使った合計を計算するメソッド
def sum(*numbers)
  numbers.sum
end

puts sum(1,2)

def greet(message, *names)
  names.each do |name|
    puts "#{message}, #{name}!"
  end
end

greet("Hello", "Alice", "Bob")
