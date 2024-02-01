class Game
  attr_accessor :name_x, :name_o

  def init(name_x, name_o)
    @player_x = name_x
    @player_o = name_o
  end

  def player
    player_x
    player_o
  end

  def board
    board = ["0","1","2","3","4","5","6","7","8"]
  end

  def position_taken?
    if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
      return false
    else
      return true
    end
  end

  def valid_move?

  end

  def win_condition
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

  def end
    if turn = 9 || win = true
    end
  end

end