module MathGame
  class Game
    def change_turn
      #switchplayers
    end
    def check_score
      loop do
      break if score < 1
      #announce_winner
    end

    def announce_winner
      puts "The winner is player 1 with a score of 2"
    end
  end
  end
end