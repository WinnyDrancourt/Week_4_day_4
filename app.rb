require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'app/game'
require 'views/board_display'
require 'views/menus'
require 'app/player'
require 'app/board'

def perform
  display = DisplayMenus.new
  display.welcome_menu
  init = gets.chomp.to_i
  if init == 1
  game = Game.new
  game.perform
  finish = display.end_game
    if finish == 1
      perform
    else
      system ("quit")
    end
  else
    system ("quit")
  end
end
perform
