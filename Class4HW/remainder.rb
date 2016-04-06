puts "Give me a number."
  num1=gets.chomp.to_i
puts "Give me another number"
  num2=gets.chomp.to_i

if num1 == 0 || num2 == 0
  puts "Sorry, this is invalid. Don't give me any zeroes"
else
  puts num1/num2
  puts num1%num2
end
