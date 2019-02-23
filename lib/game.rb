class Game
  def initialize()
    @game_config = GameConfig.new
    @board = Board.new

    # puts @game_config.player1.class
    # puts @game_config.player2.class
    # @board.draw
    start_game
  end

  private 

  def start_game
    rotate_turn
    game_over    
  end

  def game_over
  end

  def rotate_turn
    @board.draw

    @game_config.player1.make_the_move
    @game_config.player2.make_the_move unless over_condition?(@board.spots) || tie_condition?(@board.spots)
    
    # rotate_turn
  end

  def over_condition?(b)

    [b[0], b[1], b[2]].uniq.length == 1 ||
    [b[3], b[4], b[5]].uniq.length == 1 ||
    [b[6], b[7], b[8]].uniq.length == 1 ||
    [b[0], b[3], b[6]].uniq.length == 1 ||
    [b[1], b[4], b[7]].uniq.length == 1 ||
    [b[2], b[5], b[8]].uniq.length == 1 ||
    [b[0], b[4], b[8]].uniq.length == 1 ||
    [b[2], b[4], b[6]].uniq.length == 1
  end

  def tie_condition?(b)
    b.all? { |s| s == "X" || s == "O" }
  end

end