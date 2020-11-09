class Game

  attr_accessor :player1lives, :player2lives
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1lives = 3
    @player2lives = 3
    @status = true
  end

  def game_over
    "----- GAME OVER -----"
  end

end