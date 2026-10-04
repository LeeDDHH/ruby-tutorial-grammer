=begin
アクセサメソッド

インスタンス変数の値を取得したり変更したりするためのメソッド
attr_reader: 読み取り専用
attr_writer: 書き込み専用
attr_accessor: 読み書き両方

アクセサメソッドで、外からの読み書きルールを決められる
データを安全に管理できる
=end
class Character
  attr_accessor :name, :age # :と扱うインスタンス変数名を指定すると、そのインスタンス変数のアクセサメソッドを自動生成

  def initialize(name: "名無し", age: 0)
    @name = name
    @age = age
  end

  # def get_name
  #   @name
  # end

  # def get_age
  #   @age
  # end

  # def set_name(name)
  #   @name = name
  # end

  # def set_age(age)
  #   @age = age
  # end
end

character = Character.new(name: "太郎", age: 20)
# puts character.get_name
# puts character.set_name("次郎")
puts character.name
puts character.age

character.name = "次郎"
character.age = 25
puts character.name
puts character.age
