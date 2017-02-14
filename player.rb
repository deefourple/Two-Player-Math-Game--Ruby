module MathGame
  class Player
    attr_accessor :score

    def initialize
      @score = 3
    end

    def change_score
      @score -= 1
    end
  end
end