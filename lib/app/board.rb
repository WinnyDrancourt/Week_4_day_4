class Board

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
    
end