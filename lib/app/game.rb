class Game

  def board #board is an arrays of 9 elements with index
    board = ["0","1","2","3","4","5","6","7","8"]
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

  def user_move
    case playing_game
      when A1
      index = 0
      #board[index] = player symbol
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
  end

  def turn_count(board)
    counter = 0
    board.each do |count|
      if count == X || count == O
        counter += 1
      end
    return counter
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

end