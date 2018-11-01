require 'game'
require 'hand'
require 'deck'
require 'player'
require 'card'


RSpec.describe do 
  describe Deck do 
    subject(:deck) { Deck.new }
    
    describe "#initialize" do 
      it "starts with 52 cards" do 
        expect(deck.cards.count).to eq(52)
      end
      
      it "all cards are Card objects" do 
        expect(deck.cards.all? { |card| card.is_a?(Card) }).to be true 
      end
      
      it "cards are shuffled" do 
        compare_deck = Deck.new
        expect(deck.cards).not_to eql(compare_deck.cards) 
      end
    end
  end
  
  describe Hand do 
    describe "#initialize" do 
      let(:deck) { double("fake deck", cards: Array.new(10) { :a } ) }
      subject(:new_hand) { Hand.new(deck) }
      
      it "hand starts with five cards" do
        expect(new_hand.cards.count).to eq(5)
      end

      it "hand destructively draws from deck" do
      end
    end
  end
end

