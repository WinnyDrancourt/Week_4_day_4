require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'app/game.rb'
require 'views/board_display'
require 'views/menus'

game = Game.new
board = game.board
display = DisplayBoard.new
display.board_display(board)

binding.pry