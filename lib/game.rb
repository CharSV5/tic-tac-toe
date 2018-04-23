require_relative 'players'


class Game
  attr_reader :x, :o

  def create_players
    @x = Players.new
    @o = Players.new
  end
end
