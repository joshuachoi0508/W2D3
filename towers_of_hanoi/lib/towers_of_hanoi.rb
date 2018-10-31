class TowersOfHanoi
  attr_reader :towers, :player 
  
  def initialize(player)
    @towers = [[3, 2, 1], [], []]
    @player = player
  end
  
  def valid_move(starting_tower, end_tower)
  end
end