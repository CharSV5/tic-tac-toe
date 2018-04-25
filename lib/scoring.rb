class Scoring
  attr_reader :history, :final

  def initialize(history)
    @history = history
  end

  def check
    @final = @history.combination(3).sort
  end
end
