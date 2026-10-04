=begin
ローカル変数＝一時的なメモ用紙
インスタンス変数＝名前札

ローカル変数
メソッドの中だけで使える
メソッドが終わると消える
一時的な計算に使う
普通の変数名（小文字で始まる）
メソッド固有（他のメソッドからは参照できない）

インスタンス変数
クラスのどこでも使える
インスタンスがある限り値が残る
データの保存に使う
@で始まる特別な変数名
同じインスタンス内であればどこでも使える（メソッド間で値を共有できる）

※1 スコープ：その変数がどの範囲で使えるのかを表す概念
※2 生存期間：その変数がいつまで値を保持しているかを表す概念
=end

class Calculator
  def calculate_total(price)
    # tax = 0.1 #ローカル変数
    @tax = 0.1 # インスタンス変数として定義
    total = price * (1 + @tax)
    puts "税込金額：#{total}円"
  end

  def show_tax
    puts "消費税：#{@tax}" # エラーになる
  end
end

calc = Calculator.new
calc.calculate_total(1000)
calc.show_tax
