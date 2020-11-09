require './game'
require './player'
require './question'
require './turn'

shadee = Player.new("Shadee")
merhi = Player.new("Merhi")
game = Game.new(shadee, merhi)

while game.status == true
  question = Question.new
  turn = Turn.new(game, question)
  puts turn.question_statement
  turn.player_input
  if turn.check_answer
    puts "YES! You are correct!\n\n"
    puts game.life_update_statement
    puts turn.new_turn
    game.update_current_player
  else
    puts "Seriously? No!\n\n"
    game.wrong_answer
    if game.current_player.alive?
      puts game.life_update_statement
      puts turn.new_turn
      game.update_current_player
    else
      puts game.winner_statement
      puts game.game_over
      game.status = false
    end
  end
end
