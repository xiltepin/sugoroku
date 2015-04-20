require './board.rb'
require './player.rb'
require './game.rb'
require './dice.rb'

game = Game.new
game.set_board(Board.new('board.csv'))
game.add_player(Player.new("Taro"))
game.add_player(Player.new("Jiro"))
game.set_dice(Dice.new)
game.start()
