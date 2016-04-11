class Casino
  attr_accessor :start
  def initialize
  end
  def start
    puts "Welcome to The Venetian! Let's play some Blackjack!"
    puts "This table has a $5 minimum. How much would you like to bet?"
    reply = gets.chomp.to_i
  end
end

class GamePlay < Casino
  attr_accessor :name, :dealer, :hit, :deal, :winner
  def initialize
    name
    start
    deal
    winner
  end
  def name
    @players = []
    reply = ""
    puts "Please enter the first name of all players, then enter 'done'"
    until reply == "done"
      reply = gets.chomp.downcase
      @players<<reply
    end
    @players.pop
  end
  def dealer
    @dealer = dealer
  end
  def hit
    @deck = ['A', 'a', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']
    @suits = ['Hearts', 'Diamonds', 'Spades', 'Clubs']
    @hand = []
    @deal_card = @deck.shuffle[1]
    @dealer_card = @deal_card
    @hand<<"#{@deal_card} ""#{@suits.shuffle[1]}"
  end
  def deal
    b = [10]
    c = [11]
    d = [1]
    @player_hand = []
    @dealer_hand = []
    @players.each do |shark|
      puts "#{shark}: "
      2.times do
        puts hit
        @player_hand<<@deal_card
      end
    end
    puts "Would you like to hit?"
    reply = gets.chomp.downcase
    if reply == "yes"
      puts hit
      @player_hand<<@deal_card
    else
      puts "No problem."
    end
    @player_hand.map! { |x| x == 'J' ? b : x }.flatten!
    @player_hand.map! { |x| x == 'Q' ? b : x }.flatten!
    @player_hand.map! { |x| x == 'K' ? b : x }.flatten!
    @player_hand.map! { |x| x == 'A' ? c : x }.flatten!
    @player_hand.map! { |x| x == 'a' ? d : x }.flatten!
    puts "You have #{@player_hand.inject(:+)}"
    puts "Dealer: "
    2.times do
      puts hit
      @dealer_hand<<@deal_card
    end
    @dealer_hand.map! { |x| x == 'J' ? b : x }.flatten!
    @dealer_hand.map! { |x| x == 'Q' ? b : x }.flatten!
    @dealer_hand.map! { |x| x == 'K' ? b : x }.flatten!
    @dealer_hand.map! { |x| x == 'A' ? c : x }.flatten!
    @dealer_hand.map! { |x| x == 'a' ? d : x }.flatten!
    if @dealer_hand.inject(:+) < 15
      puts hit
      @dealer_hand<<@deal_card
    end
    puts "The Dealer has #{@dealer_hand.inject(:+)}"
  end
  def winner
    if @dealer_hand.inject(:+) > 21
      abort "The Dealer busts!"
    end
    if @player_hand.inject(:+) > 21
      abort "You busted!"
    end
    if @dealer_hand.inject(:+) >= @player_hand.inject(:+)
      puts "The Dealer wins"
    elsif @player_hand.inject(:+) > @dealer_hand.inject(:+)
      puts "You win!"
    end
  end
end


player1 = GamePlay.new
