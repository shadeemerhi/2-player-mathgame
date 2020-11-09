class Question

  attr_accessor :num1, :num2
  attr_reader :answer
  
  def initialize
    @num1 = random_num
    @num2 = random_num
    @answer = @num1 + @num2
  end

  def question_statement
    "What does #{@num1} plus #{@num2} equal?"
  end

  private

  def random_num
    rand(1...20)
  end
end