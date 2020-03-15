input = gets.split.map(&:to_i)
a, b = input[0], input[1]
gcd = 1 # 最大公約数

[a, b].max.downto(1) do |i|
  if a % i == 0 && b % i == 0
    gcd = i
    break
  end
end  

puts a * b / gcd