# ビンゴカード作成
a = 3.times.map{gets.split.map(&:to_i)}

# カード穴あけ
gets.to_i.times do
  b = gets.to_i
  3.times do |i|
    3.times do |j|
      a[i][j] = 0 if a[i][j] == b # 値がヒットしたら、0を代入
    end
  end
end

# ビンゴ判定
ok = false
# 縦
3.times do |i|
  ok ||= 3.times.all?{|j| a[i][j] == 0}
end
# 横
3.times do |i|
  ok ||= 3.times.all?{|j| a[j][i] == 0}
end

# 斜め
ok ||= 3.times.all?{|i| a[i][i] == 0}
ok ||= [a[0][2], a[1][1], a[2][0]].uniq == [0]

puts ok ? 'Yes' : 'No'