class Player
  def initialize(money)
    $money=money
  end
  def bet
    if $money>0.0
      puts "You have $#{$money} remaining. How much would you like to bet?"
        bet_amt = gets.chomp.to_f
          if bet_amt==0.0
            puts "Please enter a valid number."
            bet
          elsif bet_amt>$money
            puts "You can't bet more than you have. Duh."
            bet
          else
            $bet_amt = bet_amt
          end
    else
      puts "Thanks for playing. Come back when you're not BROKE."
        abort
    end
  end
end
class Game
  def initialize(player)
    @pl = player
    @deck_rank = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "Ace","King","Queen","Jack"]
    @deck_suit = %w[Clubs Diamonds Spades Hearts]
      puts "Welcome to Blackjack."
        @pl.bet
        round
  end
  def round #deals both hands, and starts player's turn
      puts "A new round begins."
      playerdeal
      compdeal
      playerturn
  end
  def drawcard #draws a random card and puts it in an array.
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
  def playerdraw #draws a card and adds it to player's hand and value arrays
    drawcard
    @player_value<<@drawn_val
    @player_hand<<@card
  end
  def compdraw #does what playerdraw does for the dealer
    drawcard
    @dealer_value<<@drawn_val
    @dealer_hand<<@card
  end
  def playerdeal #creates card and value arrays for the player, draws, and reports.
    @player_hand=Array.new
    @player_value=Array.new
      2.times do
        playerdraw
      end
    puts "Your cards are #{@player_hand.join(', ')}."
    puts "The value of your hand is #{@player_value.reduce(:+)}."
  end
  def compdeal #playerdeal for the dealer
    @dealer_hand=Array.new
    @dealer_value=Array.new
      compdraw
        puts "The dealer's cards are #{@dealer_hand.join(', ')} and a hole card."
          compdraw
  end
  def playerturn #check player's hand value and allows option of hitting if under 21
    if @player_value.reduce(:+)<21
      puts "Would you like to hit or stand?"
        ans=gets.chomp.downcase
          if ans=="hit"
            hit
          else
            compturn
          end
    elsif @player_value.reduce(:+)==21
      puts "Lucky you. 21, right on the money." #automatically goes to dealer's turn
        compturn
    else
      puts "Ooh, you went over. Sorry, but you lose this round." #ends round
        $money-=$bet_amt
        @pl.bet
        round #couldn't get .bet to run .round without redefining a bunch of code
    end
  end
  def hit #draws and reports
    playerdraw
      puts "You drew #{@card}."
      puts "Your cards are now #{@player_hand.join(', ')}, and their total value is #{@player_value.reduce(:+)}."
      playerturn
  end
  def compturn #automatically redraws until dealer's hand is over 16
      if @dealer_value.reduce(:+)<17
        compdraw
          puts "The dealer drew #{@card}."
          puts "The dealer's cards are now #{@dealer_hand.join(', ')}."
            compturn
      elsif @dealer_value.reduce(:+)>21
        puts "The dealer overdrew! You win the round."
          $money+=$bet_amt
          @pl.bet
          round
      else
        puts "The dealer's hand has a value of #{@dealer_value.reduce(:+)}."
          showdown
      end
  end
  def showdown #activates only if no one overdrew. compares values.
    if @player_value.reduce(:+)>@dealer_value.reduce(:+)
      puts "You won the round!"
        $money+=$bet_amt
          @pl.bet
          round
    elsif @dealer_value.reduce(:+)>@player_value.reduce(:+)
      puts "You lost the round."
        $money-=$bet_amt
          @pl.bet  #money loss
          round
    else
      puts "Looks like you tied." #money returned
        @pl.bet
        round
    end
  end
end

@pl = Player.new(100)
new_g=Game.new(@pl)
