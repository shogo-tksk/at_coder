inputs = gets.chomp.split.map(&:to_i)
a = inputs[0]
b = inputs[1]
k = inputs[2]

if a >= k
  a = a - k
  puts a, b
elsif a + b >= k
  b = b - (k - a)
  a = 0
  puts a, b
else
  puts 0, 0
end