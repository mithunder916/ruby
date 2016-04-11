class Blackjack
	attr_accessor :player_name, :computer_name
	def initialize (player_name, computer_name)
		@player_name = player_name
		@computer_name = computer_name
	end
	def greeting
		puts "Press 'Enter' when you are ready to be delt your cards."
		to_begin = gets.chomp
	end
	def card_deck
		deck_num=[]
		deck_suit=[]
		deck_num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11]
		deck_suit = %w[Clubs Diamonds Spades Hearts]
		@single_num = deck_num.shuffle.pop #value of cards to add up to 21, taking random number and putting it in this variable
		@single_num_computer = @single_num #computer's card values
		single_suit = deck_suit.shuffle.pop #taking random card suit from the deck and putting it in this variable
		card = []
		card<<"#{@single_num} of #{single_suit}" #storing the number and suit as a string element in the card array
		# puts "Card: #{card.join}"
		@card = card #making card array an instance variable
	end
	def cards_value_player
		@sum = @sum + @single_num #calculation to add up the card values using the instance variable single_num
	end
	def cards_value_computer
		@sum_computer = @sum_computer + @single_num_computer #calculation to add up the computer's values using the instance variable single_num_computer
	end
	def deal_cards_start
		@sum=0 #setting an initial value of sum
		@sum_computer=0
		@player_hand=[]
		@computer_hand=[]
			#Player's cards
			puts "#{player_name}'s cards are: "
			2.times do
				puts card_deck #deals cards
				@player_hand<<@card #to display what cards you get
				cards_value_player
				puts "Total value = #{@sum}."
		puts "" #styling line break
	end
			#Dealer's cards
			puts "#{computer_name}'s cards are: "
			2.times do
				puts card_deck
				@computer_hand<<@card #to display what cards the computer gets
				@cards_value_computer
				puts "Total value = #{cards_value_computer}."
		puts "" #styling line break
	end
		puts "" #styling line break
	end
	def player_choice
		puts "#{@player_name}, do you want to hit or stand?"
		choice = gets.chomp.downcase
		if choice == "hit"
			puts "#{player_name}, your new card is:"
			puts card_deck #deals new card
			@player_hand<<@card #add the new card that you were just delt to your hand
			puts "Your current hand is #{@player_hand.join(", and ")}."
			puts ""
			cards_value_player
			puts "Your total value is now #{@sum}."
			if @sum == 21
				puts "You won!"
			elsif @sum < 21
				player_choice
			else @sum > 21
				puts "You lost!"
			end
		else choice == "stand"
			puts ""
			puts "Waiting on Dealer's move."
			dealer_choice
			if @sum_computer > @sum && @sum_computer > 21 #comparing total values of cards in hand to computers
				puts "Dealer lost!"
			elsif @sum_computer > @sum && @sum_computer <=21
				puts "Dealer won!"
			elsif @sum_computer >= 22
				puts "Dealer lost!"
			elsif @sum_computer < @sum
				puts "You won!"
			else @sum_computer == @sum
				puts "Tie!"
			end
		end
	end
	def dealer_choice
		@computer_options=[]
		dealer_choice_14
		dealer_choice_15_17
		dealer_choice_18_19
		dealer_choice_20
	end
	def dealer_choice_14
		if @sum_computer < 12 #loops until computer's card values are at least 12
			@computer_options<<"hit"
			puts com_choice = @computer_options.shuffle.sample
			puts ""
			if com_choice == "hit"
				puts "Dealer's new card is #{@card.join}."
				puts "Dealer's new value is #{cards_value_computer}."
				puts ""
			end
		end
	end
	def dealer_choice_15_17
		if @sum_computer <= 16 && @sum_computer >= 12 #70% chance computer will choose 'hit' and 30% chance choose 'stand'
			14.times do
				@computer_options<<"hit"
			end
			8.times do
				@computer_options<<"stand"
			end
			puts com_choice = @computer_options.shuffle.sample
			puts ""
			if com_choice == "hit"
				puts "Dealer's new card is #{@card.join}."
				puts "Dealer's new value is #{cards_value_computer}."
				puts ""
			else com_choice == "stand"
				puts ""
			end
		end
	end
	def dealer_choice_18_19 #5% chance computer will choose 'hit' and 95% chance choose 'stand'
		if @sum_computer <= 19 && @sum_computer >= 17
			1.times do
				@computer_options<<"hit"
			end
			19.times do
				@computer_options<<"stand"
			end
			puts com_choice = @computer_options.shuffle.sample
			puts ""
			if com_choice == "hit"
				puts "Dealer's new card is #{@card.join}."
				puts "Dealer's new value is #{cards_value_computer}."
				puts ""
			else com_choice == "stand"
				puts ""
			end
		end
	end
	def dealer_choice_20
		if @sum_computer >= 20 #will never choose hit at 20 or above
			@computer_options<<"stand"
			puts "stand"
			puts ""
		end
	end
end
puts "Welcome to the Blackjack table!"
puts "What is your name?"
name = gets.chomp.capitalize
game = Blackjack.new(name, "Dealer")
game.greeting
game.deal_cards_start
game.player_choice
