def fibo(n, memo)
  return 0 if n == 0
  return 1 if n == 1
  return memo[n] if memo[n] # メモをチェック (既に計算済みなら答えをリターンする)
  memo[n] = fibo(n - 1, memo) + fibo(n - 2, memo)
end

(0..50).each do |n|
  memo = []
  puts "#{n}項目の値: #{fibo(n, memo)}"
  p memo
end