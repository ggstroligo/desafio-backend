module Player
  class Human

    def initialize(player, board)
      @board         = board
      @player_number = player

    end

    def get_human_spot
      @board.change_spot(@player_number)
    end
    
    def make_the_move
      get_human_spot
    end
  end
end