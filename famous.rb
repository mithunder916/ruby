puts "Are you famous? Y/N?"
answer=gets.chomp.downcase
  if answer=="y"
    10.times do
      puts "OH MY GOD!"
    end
  elsif answer=="n"
    3.times do
      puts "STRANGER DANGER!"
    end
  else
    puts "Huh?"
  end
