class DisplayBoard

  def board_display(board)
    puts
    puts ["XXXX""|"" A ""|"" B ""|"" C ""|"]
    puts separator = "—————————————————"
    puts [" 1> ""|"" #{board[0]} ""|"" #{board[1]} ""|"" #{board[2]} ""|"]
    puts separator
    puts [" 2> ""|"" #{board[3]} ""|"" #{board[4]} ""|"" #{board[5]} ""|"]
    puts separator
    puts [" 3> ""|"" #{board[6]} ""|"" #{board[7]} ""|"" #{board[8]} ""|"]
    puts separator
  end

  def over?(board)
    counter = 0
      board.each do |count|
        if count == "X" || count == "O"
          counter += 1
        end
      end
    if counter == 9 #|| win?
      return true
    else
      return false
    end
  end

end