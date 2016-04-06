def addition(num1,num2)
  sum=num1+num2
  puts sum
end

def subtraction(num1,num2)
  diff=num1-num2
  puts diff
end

def multiplication(num1,num2)
  product=num1*num2
  puts product
end

def division(num1,num2)
  quotient=num1/num2
  puts quotient
end

puts "Would you like to add, subtract, multiply, or divide?"
 function=gets.chomp.downcase
puts "Give me the first number."
  num1=gets.chomp.to_i
puts "Give me the second number."
  num2=gets.chomp.to_i

if function=="add"
  puts addition(num1,num2)
elsif function=="subtract"
  puts subtraction(num1,num2)
elsif function=="multiply"
  puts multiplication(num1,num2)
elsif function=="divide"
  puts division(num1,num2)
else
  puts "Pick one of the 4 math functions."
end
