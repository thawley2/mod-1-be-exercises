class Player
  attr_reader :name, :position
  def initialize(player_deets)
    @name = player_deets[:name]
    @position = player_deets[:position]
  end
end