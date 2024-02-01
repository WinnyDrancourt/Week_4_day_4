class PlayerCreation
  attr_accessor :player_o, :player_x

	def initialize(name_o, name_x)
    @player_o = name_o
    @player_x = name_x
	end

  def player_move(board, player_symbole)
    board[index] = player_symbole
  end

	def current_player(board)
		turn_count(board) %2 ==0? "X" : "O"
	end

end