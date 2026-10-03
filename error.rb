# 例外処理
begin
  # 例外が発生する可能性のある処理
  result = 10 / 0
rescue ZeroDivisionError => e
  # 例外が発生した場合の処理
  puts "エラーが発生しました: #{e.message}"
ensure
  # 例外の有無にかかわらず実行される処理
  puts "処理が終了しました"
end

def devide(a,b)
  a / b
  rescue
    puts "0で割ることは出来ない"
end

puts devide(10, 0)

def greet(name)
  if name.nil? || name.empty?
    raise "名前が空です"
  end
  puts "こんにちは、#{name}さん"
rescue => e
  puts "エラーが発生しました: #{e.message}"
end

greet("")
