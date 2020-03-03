gets
inputs = gets.split.map(&:to_i)
l, r = inputs.min, inputs.max

total = 10000000
(l..r).each do |x|
  _total = inputs.map { |i| (i - x) ** 2 }.inject(:+)
  total = _total if total > _total
end

puts total