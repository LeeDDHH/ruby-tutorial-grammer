=begin
クラスメソッド

2種類のメソッド
・インスタンスメソッド: インスタンスを作ってから使う
・クラスメソッド: クラスから直接使える

ポイント
・インスタンスメソッドはインスタンスごとに異なる動作をする
・クラスメソッドはクラス全体で共通の動作をする
  ・インスタンスに関係ない処理を書くときに便利
・クラスメソッドはself.メソッド名で定義する
・インスタンスがなくても使える
・決まった設定のインスタンスを作るのに便利
=end

class Character
  # インスタンスメソッド
  def hello
    puts "こんにちは"
  end

  # クラスメソッド
  def self.greet
    puts "こんにちは、私はクラスメソッドです"
  end

  class << self
    def another_class_method
      puts "これは別のクラスメソッドです"
    end
  end
end

hero = Character.new
hero.hello

Character.greet
Character.another_class_method

class Character2
  INITIAL_CHARACTER_TYPES = [{ job: "戦士", hp: 200 }, { job: "魔法使い", hp: 100 }]
  
  class << self
    def create_warrior
      puts "戦士を作成します"
      character_type = INITIAL_CHARACTER_TYPES.find { |type| type[:job] == "戦士" }
      new(character_type[:job], character_type[:hp])
    end

    def create_mage
      puts "魔法使いを作成します"
      character_type = INITIAL_CHARACTER_TYPES.find { |type| type[:job] == "魔法使い" }
      new(character_type[:job], character_type[:hp])
    end
  end

  def initialize(job, hp)
    @job = job
    @hp = hp
  end

  def status
    puts "職業: #{@job}, HP: #{@hp}"
  end
end

warrior = Character2.create_warrior
warrior.status

mage = Character2.create_mage
mage.status
