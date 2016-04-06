puts "So how old are you?"
  age=gets.chomp.to_i
  unless age>=18
    puts "Uh, sorry, I've gotta go."
  end
