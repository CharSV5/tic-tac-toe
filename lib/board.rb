
class Board
  attr_reader :start, :combinations
  def initialize
    @start = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    winning_combinations
  end

  def winning_combinations
    @combinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7],
                     [2, 5, 8], [0, 4, 8], [2, 4, 0]]
  end
end
