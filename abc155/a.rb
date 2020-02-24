inputs = gets.split.map(&:to_i).uniq.size
puts inputs == 2 ? 'Yes' : 'No'