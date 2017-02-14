require_relative "mathgame"
require_relative "player"
require_relative "question"

game1 = MathGame::Game.new
player1 = MathGame::Player.new
player2 = MathGame::Player.new
question = MathGame::Question.new

puts player1.player1_score
puts player2.player2_score
question.question_generator
