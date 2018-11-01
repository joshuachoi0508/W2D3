require 'card'

class Deck
  attr_accessor :cards
  
  def initialize
    @cards = create_deck.shuffle
  end
  
  def create_deck
    deck = []
    value = %w(2 3 4 5 6 7 8 9 10 J Q K A)
    suite = [:SPADE, :CLUB, :DIAMOND, :JACK]
    value.each do |value|
      suite.each { |suite| deck << Card.new(value, suite) }
    end
    deck
  end
  
end
