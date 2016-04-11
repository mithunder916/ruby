deck_num = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
deck_suits = ['Hearts', 'Spades', 'Diamonds', 'Clubs']
players = []
input = ''

puts 'Please enter the first name of all players.'
  until input == 'Done'
    input = gets.chomp.capitalize
    players<<input
  end
players.pop #gets rid of done

players.each do |name|
  puts "#{name}'s cards are #{deck_num.shuffle[0]} of #{deck_suits.shuffle[0]} and #{deck_num.shuffle[0]} of #{deck_suits.shuffle[0]}"
end
#shuffle [0] makes it randomize the order and pull out the first card in the array
#if you use sample, you don't need to put in 0
