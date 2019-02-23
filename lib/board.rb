class Board
  attr_accessor :spots
  
  PLAYER_1_MARK = "X"
  PLAYER_2_MARK = "O"

  def initialize
    @spots = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
  end

  def draw
    system "clear"
    puts [
      "#{@spots[0]} | #{@spots[1]} | #{@spots[2]}",
      "==+===+==",
      "#{@spots[3]} | #{@spots[4]} | #{@spots[5]}",
      "==+===+==",
      "#{@spots[6]} | #{@spots[7]} | #{@spots[8]}",
    ].join("\n")
  end

  def available_spot?(position)
    true unless @spots[position] != "X" && @spots[position] != "O"
  end
end