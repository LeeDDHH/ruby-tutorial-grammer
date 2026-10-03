def print_info(name, age)
  puts "名前: #{name}"
  puts "年齢: #{age}"
end

print_info("Alice",30)

def print_info_specified(name:, age:)
  puts "名前: #{name}"
  puts "年齢: #{age}"
end

print_info_specified(name: "Alice", age: 30)

def print_info_with_defaults(name: "ゲスト", age: 0)
  puts "名前: #{name}"
  puts "年齢: #{age}"
end

print_info_with_defaults
print_info_with_defaults(name: "Alice")
print_info_with_defaults(age: 30)
