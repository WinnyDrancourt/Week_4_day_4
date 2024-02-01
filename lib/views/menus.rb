require 'pry'

class DisplayMenus

  def welcome_menu
    system ("clear")
    puts " _________________________________________________ "
    puts "|                                                 |"
    puts "|                  TIC TAC TOE                    |"
    puts "|_________________________________________________|"
  end

  def init_menu
    puts "Welcome to our new sensational game"
    puts "[1] Play game"
    puts "[2] Exit"
    puts "Choose your option :"
    gets.chomp.to_i 
  end

  def init_game
    puts "Hello, players, what are your names ?"
    print "Player  o's name"
    name_o = gets.chomp
    print "player x's name"
    name_x = gets.chomp
  end

  def playing_game
    puts ""
    # définir le joueur qui doit jouer au prochain tour
    puts "Choose a case : A1, A2, A3, B1, B2, B3, C1, C2, C3 to place your symbol"
    gets.chomp
      if valid_move? == true
        puts "Good move"
      else "Wrong move, try again"
      end
  end



end

binding pry