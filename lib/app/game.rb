class Game

  

  def valid_move? # define if move puts by player is valid or not
    if index.between?(0,8) && !position_taken?
      return true
    end
  end

  def user_move
    case playing_game
      when A1
      index = 0
      #board[index] = player symbol
    when B1
      index = 1
      #board[index] = player symbol
    when C1
      index = 2
      #board[index] = player symbol
    when A2
      index = 3
      #board[index] = player symbol
    when B2
      index = 4
      #board[index] = player symbol
    when C2
      index = 5
      #board[index] = player symbol
    when A3
      index = 6
      #board[index] = player symbol
    when B3
      index = 7
      #board[index] = player symbol
    when C3
      index = 8
      #board[index] = player symbol
    end
  end

  def turn_count(board)
    counter = 0
    board.each do |count|
      if count == X || count == O
        counter += 1
      end
    return counter
  end

  def turn
    playing_game
    user_input = gets.strip
    #....
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