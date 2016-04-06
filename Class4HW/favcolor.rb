puts "What is your favorite color?"
  fav=gets.chomp.to_s.downcase
  if fav=="blue"|| fav=="green"
    puts "Great choice!"
  else
    puts "Really? That's your favorite color?"
  end
