class Game
  def initialize
    @deck_rank = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "Ace","King","Queen","Jack"]
    @deck_suit = %w[Clubs Diamonds Spades Hearts]
      puts "Welcome to Blackjack."
      round
  end
  def round
    puts "A new round begins."
    playerdeal
    compdeal
    playerturn
  end
  def drawcard
    @drawn_val=@deck_rank.shuffle[0]
    @card=Array.new
      @card << "the #{@drawn_val} of #{@deck_suit.shuffle[0]}"
        numconvert
  end
  def numconvert   #converts royal suits into numbers
    if @drawn_val=="Ace"
      @drawn_val=11
    elsif @drawn_val=="King" || @drawn_val=="Queen" || @drawn_val=="Jack"
      @drawn_val=10
    end
  end
  def playerdraw
    drawcard
    @player_value<<@drawn_val
    @player_hand<<@card
  end
  def compdraw
    drawcard
    @dealer_value<<@drawn_val
    @dealer_hand<<@card
  end
  def playerdeal
    @player_hand=Array.new
    @player_value=Array.new
      2.times do
        playerdraw
      end
    puts "Your cards are #{@player_hand.join(', ')}."
    puts "The value of your hand is #{@player_value.reduce(:+)}."
  end
  def compdeal
    @dealer_hand=Array.new
    @dealer_value=Array.new
      compdraw
        puts "The dealer's cards are #{@dealer_hand.join(', ')} and a hole card."
          compdraw
  end
  def playerturn
    if @player_value.reduce(:+)<21
      puts "Would you like to hit or stand?"
        ans=gets.chomp.downcase
          if ans=="hit"
            hit
          else
            compturn
          end
    elsif @player_value.reduce(:+)==21
      puts "Lucky you. 21, right on the money."
        compturn
    else
      puts "Ooh, you went over. Sorry, but you lose."
    end
  end
  def hit
    playerdraw
      puts "You drew #{@card}."
      puts "Your cards are now #{@player_hand.join(', ')}, and their total value is #{@player_value.reduce(:+)}."
      playerturn
  end
  def compturn
      if @dealer_value.reduce(:+)<17
        compdraw
          puts "The dealer drew #{@card}."
          puts "The dealer's cards are now #{@dealer_hand.join(', ')}."
            compturn
      elsif @dealer_value.reduce(:+)>21
        puts "The dealer overdrew! You win the round."
      else
        puts "The dealer's hand has a value of #{@dealer_value.reduce(:+)}."
          showdown
      end
  end
  def showdown
    if @player_value.reduce(:+)>@dealer_value.reduce(:+)
      puts "You won the round!"  #money gain
    elsif @dealer_value.reduce(:+)>@player_value.reduce(:+)
      puts "You lost the round."  #money loss
    else
      puts "Looks like you tied." #money returned
    end
  end
end

Game.new
