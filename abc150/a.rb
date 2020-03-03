inputs = gets.split.map(&:to_i)
n, x = inputs[0], inputs[1]

puts n * 500 >= x ? "Yes" : "No"