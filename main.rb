require './game'
require './player'
require './question'
require './turn'

shadee = Player.new("Shadee")
merhi = Player.new("Merhi")
game1 = Game.new(shadee, merhi)
# puts game1.inspect
# puts game1.update_current_player
question1 = Question.new

new_turn = Turn.new(game1, question1)
puts new_turn.question_statement

new_turn.question_statement
new_turn.player_input
puts new_turn.response
# puts question1.answer
# puts new_turn.inspect
