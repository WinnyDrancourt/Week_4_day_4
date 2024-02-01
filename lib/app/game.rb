class Game
  attr_accessor :players, :board, :boardcases

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

  def move
    current_player = @players[@turn%2]
    puts "[#{current_player.type}]#{current_player.name} it's your turn !!!"
    puts "Make your choice between #{@choice} :"
    print "> "
    input = gets.strip.to_s.upcase
    if @board_d.boardcases.index(input) != " " && @choice.include?(input)
      @choice.delete(input)
      case input
        when "A1"
          index = 0
          @board_d.boardcases[index].value = current_player.type
        when "B1"
          index = 1
          @board_d.boardcases[index].value = current_player.type
        when "C1"
          index = 2
          @board_d.boardcases[index].value = current_player.type
        when "A2"
          index = 3
          @board_d.boardcases[index].value = current_player.type
        when "B2"
          index = 4
          @board_d.boardcases[index].value = current_player.type
        when "C2"
          index = 5
          @board_d.boardcases[index].value = current_player.type
        when "A3"
          index = 6
          @board_d.boardcases[index].value = current_player.type
        when "B3"
          index = 7
          @board_d.boardcases[index].value = current_player.type
        when "C3"
          index = 8
          @board_d.boardcases[index].value = current_player.type
        end
        else move
      end
    end

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

  def win?
    win_condition.each do |condition|
      # Ici, on itère sur chaque condition de victoire définie dans win_condition

      positions = condition.map { |index| @board_d.boardcases[index].value }
      # Création d'un tableau positions pour stocker les éléments du tableau de jeu (@board)
      # correspondant à chaque index de la condition de victoire

      return true if positions.uniq.length == 1 && positions[0] != " "
      # En utilisant uniq,je vérifie si les positions dans le tableau sont identiques
      # et que la première position n'est pas une chaîne vide (" ").
      # Si ces conditions sont remplies, la méthode retourne true, donc c'est la victoire.
    end
    # Si aucune des conditions de victoire n'est remplie, on retourne false.
    false
  end

  def perform
    player_name
    until @board_d.over?(board) || win?
      @board_d.board_display(board)
      move
      system "clear"
      @turn +=1
      end
  end
end