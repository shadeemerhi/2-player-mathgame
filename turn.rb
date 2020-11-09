class Turn
  def initialize(game, question)
    @game = game
    @question = question
    @player_answer = nil
  end

  def player_input
    @player_answer = gets.chomp.to_i
  end

  def question_statement
    "#{@game.current_player.name}: What does #{@question.num2} plus #{@question.num1} equal?"
  end

  def response
    right_answer ? "YES! You are correct!" : "Seriously? No!"
  end

  def new_turn
    "----- NEW TURN -----"
  end

  private

  def right_answer
    @player_answer == @question.answer
  end

end