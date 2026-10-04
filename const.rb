=begin
定数

クラスやモジュールの中で定義される変更されない値

・大文字で始まる名前
・変更しようとすると警告が出る
・プログラム全体で共有する固定値に仕様

慣習的にすべて大文字
技術的には変更可能だが警告が出る
freezeで完全な変更不可にできる
=end

class Product
  TAX_RATE = 0.1.freeze

  def total_price(price)
    price * (1 + TAX_RATE)
  end
end

product = Product.new
puts product.total_price(1000)


class Settings
  DEFAULT_TIMEOUT = 30.freeze
end

puts Settings::DEFAULT_TIMEOUT
