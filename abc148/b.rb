n = gets.to_i
inputs = gets.chomp.split
s, t = inputs[0], inputs[1]
a = []

0.upto(n) do |i|
  a.push(s[i])
  a.push(t[i])
end

puts a.join