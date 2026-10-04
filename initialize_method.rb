=begin
initializeメソッド

インスタンスが生まれたときに自動で呼ばれる
インスタンス変数の初期値を設定できる
引数で初期値を変更できる

newでインスタンスを作ると、自動的にinitializeが呼ばれる
=end

class Character
  def initialize(name: "名無し", age: 0)
    @name = name
    @age = age
    puts "キャラクターが作られました: #{@name}, #{@age}歳"
  end

  def show_status
    puts "キャラクターのステータス: #{@name}, #{@age}歳"
  end
end

character = Character.new(name: "Alice", age: 25)
character.show_status
