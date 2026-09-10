# （=>）ロケット演算子、ハッシュロケット

person = {:name => "太郎", :age => 20}

puts person[:name] # => "太郎"
puts person[:age]  # => 20

person.delete(:age) # => 20

puts person

person[:age] = 30

puts person

puts person.keys
puts person.values

puts person.values.include?("太郎")
puts person.values.include?("次郎")

# 

empty_hash = {}

empty_hash[:name] = "花子"
empty_hash[:age] = 25

puts empty_hash

puts empty_hash.keys
puts empty_hash.values

# 

one_person = {
  name: "次郎",
  age: 20
}

puts one_person

puts one_person[:name] # => "次郎"
puts one_person[:age]  # => 20

puts one_person.keys
puts one_person.values
