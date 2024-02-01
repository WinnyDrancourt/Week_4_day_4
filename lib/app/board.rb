class Board
  attr_accessor :board

  def initialize
    @board = board

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