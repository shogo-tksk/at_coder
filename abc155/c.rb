s = gets.to_i.times.map{gets.chomp}
h = Hash.new(0) # 初期値に0を設定
max = 0
s.each do |_s|
  h[_s] += 1
  max = h[_s] if max < h[_s]
end

puts h.select { |k, v| v == max }.keys.sort