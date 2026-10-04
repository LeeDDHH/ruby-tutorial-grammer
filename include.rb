=begin
継承

基本概念
・親クラスの機能を子クラスが受け継ぐ仕組み

継承チェーン
・複数の階層で継承が可能
  ・Animal → Dog → Puppy
・Rubyでは単一継承のみサポートされている
・メソッドは近い順に検索される
  ・自分のクラス自身 → 親クラス → さらに上の親クラスの順に検索される

ポイント
親クラスのメソッドをそのまま使える
=end

class Animal
  def initialize(name:)
    @name = name
  end

  def speak
    "#{@name}が鳴きます"
  end

  def sleep
    "#{@name}が眠ります"
  end
end

class Dog < Animal
  def speak # オーバーライド
    "#{@name}がワンと鳴きます"
  end
end

class Cat < Animal
  def speak # オーバーライド
    "#{@name}がニャーと鳴きます"
  end
end

dog = Dog.new(name: "ポチ")
puts dog.speak
puts dog.sleep

cat = Cat.new(name: "タマ")
puts cat.speak
puts cat.sleep
