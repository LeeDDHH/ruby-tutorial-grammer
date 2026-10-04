=begin
モジュール

基本概念
・機能の共有と再利用のための仕組み
・複数のクラスで同じ機能を共有できる
・module キーワードで定義、includeで取り込む

使い方の例
・共通の振る舞い（walkメソッドなど）をモジュールに切り出す
・必要なクラスで include して機能を追加
・複数のモジュールを1つのクラスに取り込める

メリット
・コードの重複を避けられる
・柔軟に機能を追加できる
・多重継承の問題を回避できる

デメリット
・状態を持たせにくい
・依存関係が複雑になることがある

ポイント
・多重継承の代わりに使用される
・`include`でインスタンスメソッドを追加
・`extend`でクラスメソッドを追加

いろんなクラスの特徴を使いまわしたい時には親クラスとして定義し、継承して使う
親クラスに関わらず、いろんなクラスで使いまわしたいときはモジュールとして定義し、include して使う
=end

class Dog
  def speak
    puts "ワンワン"
  end

  def walk
    puts "散歩中です"
  end
end

class Cat
  def speak
    puts "ニャー"
  end

  def walk
    puts "散歩中です"
  end
end

module WalkBehavior
  def walk
    puts "散歩中です"
  end
end

module SleepBehavior
  def sleep
    puts "眠っています"
  end
end

class Dog2
  include WalkBehavior
  include SleepBehavior

  def speak
    puts "ワンワン"
  end
end

class Cat2
  include WalkBehavior
  include SleepBehavior

  def speak
    puts "ニャー"
  end
end

dog2 = Dog2.new
dog2.walk
dog2.speak

cat2 = Cat2.new
cat2.walk
cat2.speak
