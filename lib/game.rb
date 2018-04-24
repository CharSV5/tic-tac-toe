require_relative 'player'
require_relative 'board'


class Game
  attr_reader :x, :o, :turn, :board

  def initialize
    @turn = nil
  end

  def create_players
    @x = Player.new('x')
    @o = Player.new('o')
  end

  def create_board
    @board = Board.new
  end

  def start_game
    @turn = [x, o].sample
  end

  def switch_player_turn
    if @turn == @x
      @turn = @o
    else
      @turn = @x
    end
  end

  # def player_x_turn?
  #   @turn == @x
  # end

  def play(field)
    i = field - 1
    @board.start[i] = @turn.name
  end

end
