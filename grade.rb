puts "What was your numerical grade?"
grade=gets.chomp.to_i
if grade >=60
  puts "You passed!"
else grade <60
  puts "You failed."
end
