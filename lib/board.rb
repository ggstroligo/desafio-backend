class Board
  attr_accessor :spots
  
  PLAYER_MARK = {
    1 => "X",
    2 => "O"
  }

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

  def change_spot(player)
    
    spot = false
    until available_spot? spot
      print ">> Player #{player}: "
      spot = gets.chomp.to_i
    end
    @spots[spot] = PLAYER_MARK[player]
  end

  def available_spot?(position)
    if position
      true if @spots[position] != "X" && @spots[position] != "O"
    end
  end
end
