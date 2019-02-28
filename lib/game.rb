class Game
  def initialize()
    @board = Board.new
    @game_config = GameConfig.new @board
    system "clear"

    game_start
  end

  private 

  def game_start
    rotate_turn
    game_over
  end

  def game_over
    system "clear"
    result = "#{winner_check @board}"
    
    puts "Finish!\n"
    if result != "tied"
      puts "easy peasy lemon squeezy ;)\n"
      puts "Result: Player #{result} won!!!!"
    else
      puts "that was close! ¯\\_(ツ)_/¯"
      puts "Result: Draw!"
    end
    puts "\nWell played!\n\n"

    @board.draw

  end

  def rotate_turn
    system "clear"
    @board.draw

    @game_config.player1.make_the_move
    @game_config.player2.make_the_move unless self.class.over_condition?(@board) || self.class.tie_condition?(@board)

    rotate_turn unless self.class.over_condition?(@board) || self.class.tie_condition?(@board)
  end

  def self.over_condition?(board)
    board::finish_combinations.any? {|c| c.uniq.length == 1 }
  end

  def self.tie_condition?(board)
    board.spots.all? { |s| s == "X" || s == "O" }
  end

  def winner_check board
    combinations_matched = board.finish_combinations.find {|c| c.uniq.length == 1}
    
    return "tied" unless combinations_matched

    winner_mark = combinations_matched[0] 
    Board::PLAYER_MARK.find {|key, value| value == winner_mark }[0] 
  end

end