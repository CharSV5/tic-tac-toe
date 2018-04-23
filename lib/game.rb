require_relative 'player'


class Game
  attr_reader :x, :o

  def create_players
    @x = Player.new
    @o = Player.new
  end
end
