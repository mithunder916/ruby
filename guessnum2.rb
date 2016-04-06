puts "I'm thinking of a number between 1 and 100. Can you guess it?"
mynum=gets.chomp.to_i
if mynum==86
  puts "You got it!"
elsif (mynum.to_i-86).abs<=5
  puts "Oooh. You're close."
else
  puts "Try again."
end
