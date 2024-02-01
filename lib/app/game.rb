class Game

  def board #board is an arrays of 9 elements with index
    board = [" "," "," "," "," "," "," "," "," "]
  end

  def position_taken? #define if position is taken or not
    if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
      return false
    else
      return true
    end
  end

  def valid_move? # define if move puts by player is valid or not
    if index.between?(0,8) && !position_taken?
      return true
    end
  end

  def move_to_index
    index = 0
    case playing_game
      when A1
        index = 0
      when B1
        index = 1
      when C1
        index = 2
      when A2
        index = 3
      when B2
        index = 4
      when C2
        index = 5
      when A3
        index = 6
      when B3
        index = 7
      when C3
        index = 8
    end
    return index
  end

  def index_to_board
    board[index] = current_player
  end

  def turn_count(board)
    counter = 0
    board.each do |count|
      if count == X || count == O
        counter += 1
      end
    return counter
  end

  def over?
    if counter == 9 || win?
      return true
    else
        return false
    end
  end

  def turn
    until over?
    move_to_index
    if valid_move? == true
        puts "Good move"
        index_to_board
      else "Wrong move, try again"
    end

  end

  def win_condition # Define winning combinaison for compare
    win_condition = [
      [0, 1, 2] #top row
      [3, 4, 5] #middle row
      [6, 7, 8] #bottom row
      [0, 3, 6] #lef column
      [1, 4, 7] #middle column
      [2, 5, 8] #right column
      [0, 4, 8] #diag left
      [2, 4, 6] #diag right
    ]
  end
  def win?
    win_condition.each do |condition|
      # Ici, on itère sur chaque condition de victoire définie dans win_condition

      positions = condition.map { |index| @board[index] }
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

end