class PlayerCreation
  attr_accessor :player_o, :player_x
	@all_player = []

	def initialize(name)
    @player_o = name_o
    @player_x = name_x
		@all_player << @player_o
		@all_player << @player_x
	end

end