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
turn_switch = 1
until player_1_board.empty? || player_2_board.empty?

  # decide who's turn is it
  case turn_switch
  when 1
    turn = "1"
    current_board = player_2_board
  when -1
    turn = "2"
    current_board = player_1_board
  end

  # current_board.play_turn

  Headers.main
  Headers.player(turn)
  BoardView.state(current_board)
  Headers.prep_for_fire(turn)
  target = BoardView.get_target

  target_coordinates = Converter.convert(target)

  # fire at the board
  if current_board.fire(target)
    current_board.mark_hit(target_coordinates)
    Headers.main
    Headers.player(turn)
    BoardView.state(current_board)
    Headers.hit_something
    if current_board.scan
      Headers.sunk_ship
    end
  else
    current_board.mark_miss(target_coordinates)
    Headers.main
    Headers.player(turn)
    BoardView.state(current_board)
    Headers.miss
  end
  Headers.switch_players
  # switch player
  turn_switch *= -1
end

puts "Game over!"



#
