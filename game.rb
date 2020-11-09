class Game

  attr_accessor :player1lives, :player2lives
  attr_reader :player1, :player2, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1lives = 3
    @player2lives = 3
    @status = true
    @current_player = @player1
  end

  def update_current_player
    if @current_player.name == @player1.name
      @current_player = player2
    elsif
      @current_player.name == @player2.name
      @current_player = player1
    end
  end

  def game_over
    "----- GAME OVER -----"
  end

end