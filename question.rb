module MathGame
  class Question

    def question_generator
      r = Random.new
      number_1 = r.rand(1...20)
      number_2 = r.rand(1...20)
      computer_answer = number_1 + number_2
      question = "What is #{number_1} + #{number_2}?"
      puts "---- NEW TURN ----"
      puts question
      answer = gets.chomp.to_i
      if answer == computer_answer
        puts "Correct-a-mundo! Your current score is fantastic"
        return true
      else
        puts "Wrong answer."
        return false
    end
    end
  end
end
