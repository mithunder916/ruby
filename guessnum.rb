
puts "I'm thinking of a number between 1 and 10. Can you guess it?"
mynum=gets.chomp.to_i
if mynum==9
  puts "You got it!"
elsif mynum<=10
  puts "Try again."
else
  puts "Reread the rules and try again."
end
