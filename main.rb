require './game'
require './player'

shadee = Player.new("Shadee")
merhi = Player.new("Merhi")
game1 = Game.new(shadee, merhi)
puts game1.player1
