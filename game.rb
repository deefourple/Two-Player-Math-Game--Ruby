#Build a question that takes an answer/output the answer
#Modify question to have if statements to check if true
#Modify question to generate random numbers/store them as the answer
r = Random.new

number_1 = r.rand(1...20)
number_2 = r.rand(1...20)
computer_answer = number_1 + number_2

question = puts "What is #{number_1} + #{number_2}?"
answer = gets.chomp.to_i
  if answer == computer_answer
    puts "Correct! The answer is #{computer_answer}, you answered #{answer}"
  else
    puts "Wrong answer. Game over"
  end