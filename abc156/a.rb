inputs = gets.split.map(&:to_i)
n, r = inputs[0], inputs[1]

if n < 10
  puts r + 100 * (10 - n)
else
  puts r
end