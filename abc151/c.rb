inputs = gets.chomp.split.map(&:to_i)
a = inputs[1].times.map{gets.split.map(&:to_s)}

ac = Array.new(inputs[0], 0)
pena = Array.new(inputs[0], 0)

a.each do |_a|
  i = _a[0].to_i
  next if ac[i - 1] == 1
  if _a[1] == 'AC'
    ac[i - 1] = 1
  else
    pena[i - 1] += 1
  end
end

_ac = 0
_pena = 0
ac.each { |a| _ac += 1 if a == 1 }
pena.each_with_index { |p, i| _pena += p if ac[i - 1] == 1}

puts _ac, _pena