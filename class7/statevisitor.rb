statelist=[]
puts "What states have you visited?"
  input=gets.chomp
  statelist<<input
until input=='done'
  puts "Where else?"
  input=gets.chomp
  statelist<<input
end
statelist.pop

puts statelist.join(', ')
#.join prints an array with whatever is in the quotation marks separating each element
