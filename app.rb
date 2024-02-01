require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'app/game'
require 'views/board_display'
require 'views/menus'
require 'app/player'
require 'app/board'

def init
  display = DisplayMenus.new
  display.welcome_menu
    case display.init_menu
    when 1
      display.init_game
    when 2
      system ("exit")
    end
  end

# def turn(counter, new_game, board_new, display)
#   until new_game.over?(counter)
#     playing_input = display.playing_game
#     board_new.move_to_index(playing_input)
#     if valid_move? == true
#       puts "Good move"
#       index_to_board
#     else "Wrong move, try again"
#     end
#   end
# end

def perform
  init
  board_new = Board.new
  board = board_new.board
  display_board = DisplayBoard.new
  display_board.board_display(board)
  new_game = Game.new
  # counter = new_game.turn_count(board)
  new_game.turn(board_new)
end

perform

binding.pry