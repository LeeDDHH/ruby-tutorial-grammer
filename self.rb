=begin
Selfキーワード

コードが実行されているときの自分自身を表す特別なキーワード

・インスタンスメソッド内：そのインスタンス自身
・クラスメソッド内：そのクラス自身
・クラス定義内：そのクラス自身

自分自身の状態を変更するときに重要
attr_accessorと組み合わせてよく使う
=end

class User
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def set_name(name)
    @name = name
  end

  def greet
    "こんにちは、#{@name}です"
  end
end

user = User.new("太郎")
puts user.greet

class User2
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def greet
    # "こんにちは、#{self.name}です"

    # 暗黙のself
    "こんにちは、#{name}です"
  end
end

user2 = User2.new("次郎")
puts user2.greet
