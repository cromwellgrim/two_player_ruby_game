class Question

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def pose_question
    puts "What does #{@number1} + #{@number2} equal?"
  end

  def result(answer)
    @answer == answer.to_i
  end

end