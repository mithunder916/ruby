arr = []
5.times do
  puts 'Give me a number'
  num=gets.chomp.to_i
arr<<num
end
puts arr.reduce(:+)
puts arr.reduce(:*)
puts arr.max
puts arr.min
