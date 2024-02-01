class DisplayMenus

  def welcome_menu
    system ("clear")
    puts " _________________________________________________ "
    puts "|                                                 |"
    puts "|                  TIC TAC TOE                    |"
    puts "|_________________________________________________|"
    puts "Welcome to our new sensational game"
    puts "[1] Play game"
    puts "[2] Exit"
    puts "Choose your option :"
  end

  def end_game
    print "> "
    gets.chomp.to_i
  end


end