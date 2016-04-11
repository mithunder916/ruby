deck_rank = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
deck_suits = ['Hearts', 'Spades', 'Diamonds', 'Clubs']


class Card
  attr_reader :rank, :suit
  def initialize(suit,rank)
    @rank=rank
    @suit=suit
  end
end

c1=Card.new("Spades",7)

class Deck
  attr_accessor :cards
  def initialize
    @cards=Array.new
    deck_suits.each do |suits|
      deck_rank.each do |rank|
        @cards << Card.new(suit,rank)
      end
    end
  end
end
