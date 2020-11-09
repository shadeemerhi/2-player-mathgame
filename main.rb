require './game'
require './player'
require './question'
require './turn'

shadee = Player.new("Shadee")
merhi = Player.new("Merhi")
game = Game.new(shadee, merhi)

while game.status == true
  question = Question.new
  turn = Turn.new(game.current_player, question)
  puts turn.question_statement
  turn.player_input
  if turn.check_answer
    puts "YES! You are correct!\n\n"
    sleep(1)
    puts game.life_update_statement
    sleep(1)
    puts turn.new_turn
    sleep(1)
    game.update_current_player
  else
    puts "Seriously? No!\n\n"
    sleep(1)
    game.wrong_answer
    if game.current_player.alive?
      puts game.life_update_statement
      sleep(1)
      puts turn.new_turn
      sleep(1)
      game.update_current_player
    else
      puts game.winner_statement
      puts game.game_over
      game.status = false
    end
  end
end
