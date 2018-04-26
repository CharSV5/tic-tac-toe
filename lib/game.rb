require_relative 'player'
require_relative 'board'

class Game
  attr_reader :x, :o, :turn, :board, :game_over

  def initialize
    @game_over = false
  end

  def create_players
    @x = Player.new('x')
    @o = Player.new('o')
    @turn = @x
  end

  def create_board(board = Board.new)
    @board = board
  end

  def start_game
    @turn = [x, o].sample
  end

  def switch_player_turn
    @turn =
      if @turn == @x
        @o
      else
        @x
      end
  end

  def play(field)
    unless game_over
      i = field - 1
      if @board.start[i].class == Integer
        @board.start[i] = @turn.name
        @turn.record.record_play(field)
      end
    end
  end

  def winner?
    @win = @board.combinations.map do |comb|
      @turn.record.scoring.final.include?(comb)
    end
    @game_over = true if @win.include?(true)
  end
end
