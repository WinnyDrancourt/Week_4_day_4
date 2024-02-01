class Game
  attr_accessor :players, :board, :menus

  def initialize
    create_players
    create_board
    @choice = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
    @turn = 0
  end

  def create_players
    player_o = Player.new(nil, "O")
    player_x = Player.new(nil, "X")
    @players = [player_o, player_x]
  end

  def player_name
    puts "Hello, players, what are your names ?"
    print "Player  o's name > "
    name_o = gets.chomp
    @players[0].name = name_o
    print "player x's name > "
    name_x = gets.chomp
    @players[1].name = name_x
  end

  def create_board
    @board_d = DisplayBoard.new
  end

  def board #board is an arrays of 9 elements with index
    @board = ["0","1","2","3","4","5","6","7","8"]
    return @board
  end

  def move
    current_player = @players[@turn%2]
    puts "#{current_player.name} it's your turn !!!"
    puts "Make your choice between #{@choice} :"
    print "> "
    input = gets.strip.to_s.upcase
    case input
      when "A1"
        index = 0
      when "B1"
        index = 1
      when "C1"
        index = 2
      when "A2"
        index = 3
      when "B2"
        index = 4
      when "C2"
        index = 5
      when "A3"
        index = 6
      when "B3"
        index = 7
      when "C3"
        index = 8
    end
  end

  # def turn
  #   move_to_index
  #     if valid_move? == true
  #         puts "Good move"
  #         index_to_board
  #       else "Wrong move, try again"
  #     end
  #   end
  # end

  def win_condition # Define winning combinaison for compare
    win_condition = [
      [0, 1, 2], #top row
      [3, 4, 5], #middle row
      [6, 7, 8], #bottom row
      [0, 3, 6], #lef column
      [1, 4, 7], #middle column
      [2, 5, 8], #right column
      [0, 4, 8], #diag left
      [2, 4, 6] #diag right
    ]
  end

  # def win?
  #   win_condition.each do |condition|
  #     # Ici, on itère sur chaque condition de victoire définie dans win_condition

  #     positions = condition.map { |index| @board[index] }
  #     # Création d'un tableau positions pour stocker les éléments du tableau de jeu (@board)
  #     # correspondant à chaque index de la condition de victoire

  #     return true if positions.uniq.length == 1 && positions[0] != " "
  #     # En utilisant uniq,je vérifie si les positions dans le tableau sont identiques
  #     # et que la première position n'est pas une chaîne vide (" ").
  #     # Si ces conditions sont remplies, la méthode retourne true, donc c'est la victoire.
  #   end
  #   # Si aucune des conditions de victoire n'est remplie, on retourne false.
  #   false
  # end

  def perform
    player_name
    @board_d.board_display(board)
      until @board_d.over?(board)
        @turn +=1
        move

      end
  end

end