=begin
インスタンス変数
インスタンスごとの個別データ
@から始まる特別な変数
そのインスタンスだけのデータを保存できる
一度設定したら消えない（インスタンスが存在する間）

それぞれのインスタンスが別々のデータを持てる
あるインスタンスのデータを変えても、他には影響しない
=end

class Dog
  def set_name(name)
    @name = name
  end

  def bark
    return puts "名前が設定されていません" unless @name
    puts "#{@name}はワンワンと鳴いた"
  end
end

dog = Dog.new
dog.set_name("ポチ")
dog.bark
puts dog.inspect

shiro = Dog.new
shiro.bark

class Cat
  # TODO 1: 名前を設定するメソッドを作成
  # 引数で受け取った名前をインスタンス変数@nameに代入する
  def set_name(name)
      @name = name
  end
  
  # TODO 2: 年齢を設定するメソッドを作成
  # 引数で受け取った年齢をインスタンス変数@ageに代入する
  def set_age(age)
      @age = age
  end
  
  # TODO 3: 自己紹介用のメソッドを作成
  # 「〇〇は△△歳です」という文字列を返す
  # 〇〇は@nameの値、△△は@ageの値を使う
  def introduce
      "#{@name}は#{@age}歳です"
  end
end

shiro = Cat.new
shiro.set_name("タマ")
shiro.set_age(3)
puts shiro.introduce
