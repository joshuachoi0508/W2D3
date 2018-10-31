require 'towers_of_hanoi'

RSpec.describe do 
  subject(:game) { TowersOfHanoi.new(player) }
  
  describe "#initialize" do
    let(:player) { double("player", name:"Josh") }
    
    it "initializes towers correctly" do 
      expect(game.towers).to eq([[3, 2, 1], [], []])
    end
    it "initializes player" do
      # allow(game).to receive(:player).and_return("Josh")
      expect(game.player.name).to eq("Josh")
    end
    end
  end
  
  describe "#valid_move?" do
    context "validate player input accordingly" do
      it "starting tower is not null" do 
        expect(game.valid_move?(1, 2)).to_be valid_move
      end
    end
end