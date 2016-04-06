puts "How old are you?"
  age=gets.chomp.to_i
  if age>=21
    puts "Go right ahead."
  else
    puts "Come back in #{21-age} years."
  end
