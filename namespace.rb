=begin
名前空間

モジュールを使った名前の区別
同じ名前のクラスを区別できる仕組み
モジュール名::クラス名で指定
例: Zoo::Animal

基本概念
・モジュールを使って名前の衝突を避ける仕組み
・module キーワードで定義
・:: を使ってアクセス

使い方の例
・同じ名前のクラスやメソッドが複数存在する場合に名前空間で区別
・必要なクラスで include して機能を追加

メリット
・同じクラス名の衝突を避けられる
・プログラムを分かりやすく構造化できる

デメリット
・ネストが深くなると可読性が下がることがある
=end

class Animal
  def speak
    puts "鳴き声"
  end
end

module Zoo
  class Animal
    def speak
      puts "動物園の動物が鳴いています"
    end
  end
end

module Farm
  class Animal
    def speak
      puts "農場の動物が鳴いています"
    end
  end
end

zoo_animal = Zoo::Animal.new
zoo_animal.speak

farm_animal = Farm::Animal.new
farm_animal.speak

animal = Animal.new
animal.speak
