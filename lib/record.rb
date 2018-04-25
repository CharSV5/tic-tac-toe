require_relative 'scoring'

class Record
  attr_reader :history, :scoring

    def initialize
      @history = []
    end

    def record_play(field)
      @history.push(field)
    end

    def create_scoring(scoring = Scoring.new(@history))
      @scoring = scoring
    end
end
