
module MathGame
  class Question

    def answer_checker
      if answer == computer_answer && score > 0
        puts "Correct-a-mundo! Your current score is #{score}"
    end

    def output_message

    end

    def question_generator
      r = Random.new
      number_1 = r.rand(1...20)
      number_2 = r.rand(1...20)
      computer_answer = number_1 + number_2
      question = "What is #{number_1} + #{number_2}?"
      puts "---- NEW TURN ----"
      puts question
    end
  end
end
