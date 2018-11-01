require "deck"


class Hand
  attr_reader :cards, :deck
  
  def initialize(deck)
    @cards = deck.cards.shift(5)
    @deck = deck
  end
  
end