class Game

  attr_accessor :player1lives, :player2lives, :status
  attr_reader :player1, :player2, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @status = true
    @current_player = @player1
    @not_current_player = @player2
  end

  def update_current_player
    if @current_player.name == @player1.name
      @current_player = @player2
      @not_current_player = @player1
    elsif
      @current_player.name == @player2.name
      @current_player = @player1
      @not_current_player = @player2
    end
  end

  def life_update_statement
    "----- CURRENT LIVES -----\n #{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3\n\n"
  end

  def wrong_answer
    @current_player.lives -= 1
  end

  def winner_statement
    "#{@not_current_player.name} wins with a score of #{@not_current_player.lives}/3\n\n"
  end

  def game_over
    "----- GAME OVER -----"
  end

end