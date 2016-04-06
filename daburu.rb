puts "Gimme a number between 1 and 10."
  num=gets.chomp.to_i
if (num>=1 && num <=10)
  until num>=20
    puts num
    num *= 2
  end
else
  puts "You didn't follow instructions."
end
