s = gets.chomp
a = gets.to_i.times.map{gets.split.map(&:to_s)}

a.each do |_a|
  if _a[0] == '1'
    s = s.reverse
    next
  elsif _a[1] == '1'
    s = _a[2] << s
    next
  else _a[1] == '2'
    s = s << _a[2]
    next
  end
end

puts s