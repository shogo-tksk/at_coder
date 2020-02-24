n = gets.to_i
inputs = gets.split.map(&:to_i).select{ |n| n % 2 == 0}
check = inputs.select{ |n| (n % 3 == 0 || n % 5 == 0) }
puts inputs.size == check.size ? 'APPROVED' : 'DENIED'