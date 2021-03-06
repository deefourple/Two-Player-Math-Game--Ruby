# Build a question that takes an answer/output the answer
# Modify question to have if statements to check if true
# Modify question to generate random numbers/store them as the answer

# Create a score of 3/have one player
# Adjust turn if answer is wrong
# Do something once score hits 0

#create player playerConstructor

r = Random.new
score = 3

loop do
  break if score < 1
  number_1 = r.rand(1...20)
  number_2 = r.rand(1...20)
  computer_answer = number_1 + number_2
  question = "What is #{number_1} + #{number_2}?"
  puts "---- NEW TURN ----"
  puts question


  answer = gets.chomp.to_i
  if answer == computer_answer && score > 0
    puts "Correct! The answer is #{computer_answer}, you answered #{answer}. Your current score is #{score}"
  elsif score < 1
    puts "GAME OVER. You've lost all of your lives"
  else
    score -= 1
    puts "Wrong answer. Your score is now. #{score}"
  end
end
