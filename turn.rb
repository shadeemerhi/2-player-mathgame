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
    "#{@game.current_player.name}: What does #{@question.num2} plus #{@question.num1} equal?\n\n"
  end

  def new_turn
    "----- NEW TURN -----\n\n"
  end

  def check_answer
    @player_answer == @question.answer
  end

end