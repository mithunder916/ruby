puts "Gimme a number between 1 and 10."
  num=gets.chomp.to_i
  until num==-1
    num -= 1
    puts num
  end
