require_relative 'ship'
require_relative 'carrier'
require_relative 'battleship'
require_relative 'cruiser'
require_relative 'destroyer'
require_relative 'submarine'
require_relative 'board'
require_relative "converter"
require_relative 'board_controller'
require_relative 'board_view'
require_relative 'ship_view'
require_relative 'headers'

controller = BoardController.new

# set up game
player_1_board = controller.new_player("1")
player_2_board = controller.new_player("2")

# play the game
controller.play(player_1_board, player_2_board)
