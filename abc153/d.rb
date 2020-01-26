h = gets.to_i

# xを倒すための回数
def f(x)
  # ベースケース
  return 1 if x == 1
  # 次回の呼び出しは必ず問題を小さくする
  f(x/2) * 2 + 1
end

puts f(h)