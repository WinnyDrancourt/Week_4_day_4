require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'app/game'
require 'views/board_display'
require 'views/menus'
require 'app/player'
require 'app/board'

game = Game.new
game.perform

binding.pry