=begin
クラス変数

全インスタンスでデータを共有する
・@@で始まる特別な変数
・インスタンス間でデータを共有
・クラスメソッドからアクセス可能
インスタンスごとに異なる値を持つインスタンス変数とは異なり、
クラス変数はすべてのインスタンスで同じ値を持ちます。

クラス変数の定義は @@ で行います。
例:
  @@count = 0

クラス変数はクラスメソッドやインスタンスメソッドからアクセスできます。
=end

class Counter
  @@count = 0

  # クラスメソッドからのアクセス
  class << self
    def count
      @@count
    end

    def increment
      @@count += 1
    end
  end

  # インスタンスメソッドからもアクセス可能
  def count
    @@count
  end

  def increment
    @@count += 1
  end
end

counter1 = Counter.new
counter2 = Counter.new

puts Counter.count
counter1.increment
puts Counter.count
counter2.increment
puts Counter.count

class Configuration
  @@settings = {}

  class << self
    def set(key, value)
      @@settings[key] = value
    end

    def get(key)
      @@settings[key]
    end
  end

  def send_mail
    # メールを送信する処理

    # 失敗した場合には、retry_countを1つ増やす
    # 最大リトライ回数に達したら処理を諦める
  end
end

Configuration.set(:max_retries, 5) # 最大リトライ回数
Configuration.set(:retry_count, 0) # 現在の最大リトライ回数
puts Configuration.get(:max_retries)
puts Configuration.get(:retry_count)
