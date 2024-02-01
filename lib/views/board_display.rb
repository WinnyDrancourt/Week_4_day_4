class DisplayBoard
  attr_accessor :boardcases

  def initialize #creates an array of 9 cases representing the game board
    @boardcases = []
    9.times do
      boardcase = Boardcase.new(" ")
      @boardcases << boardcase
    end
  end

  def board_display(board)
    puts
    puts ["    |XXXX""|"" A ""|"" B ""|"" C ""|"]
    puts separator = "    —————————————————"
    puts ["    | 1> ""|"" #{@boardcases[0].value} ""|"" #{@boardcases[1].value} ""|"" #{@boardcases[2].value} ""|"]
    puts separator
    puts ["    | 2> ""|"" #{@boardcases[3].value} ""|"" #{@boardcases[4].value} ""|"" #{@boardcases[5].value} ""|"]
    puts separator
    puts ["    | 3> ""|"" #{@boardcases[6].value} ""|"" #{@boardcases[7].value} ""|"" #{@boardcases[8].value} ""|"]
    puts separator
    puts
  end

  def over?(board) #the over? method checks if the game is over
    counter = 0
      @boardcases.each do |count|
        if count.value == "X" || count.value == "O"
          counter += 1
        end
      end
    if counter == 9
      return true
    else
      return false
    end
  end

end