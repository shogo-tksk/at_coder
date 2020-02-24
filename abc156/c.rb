n = gets.to_i
inputs = gets.split.map(&:to_i)

sum = 0

inputs.each do |x|
  sum += (x - n)**2
end

puts sum