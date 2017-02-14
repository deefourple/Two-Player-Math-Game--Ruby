require_relative "mathgame"
require_relative "player"
require_relative "question"

game1 = MathGame::Game.new
player1 = MathGame::Player.new
player2 = MathGame::Player.new
question = MathGame::Question.new

player1.score
unless question.question_generator
  puts "Your current score is #{player1.change_score}/3"
end
# question.check_score
# question.question_generator
