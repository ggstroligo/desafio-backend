class Board
  attr_accessor :spots
  
  PLAYER_MARK = {
    1 => "X",
    2 => "O"
  }

  def initialize
    @spots = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
  end

  def finish_combinations 
    [
      [@spots[0], @spots[1], @spots[2]],
      [@spots[3], @spots[4], @spots[5]],
      [@spots[6], @spots[7], @spots[8]],
      [@spots[0], @spots[3], @spots[6]],
      [@spots[1], @spots[4], @spots[7]],
      [@spots[2], @spots[5], @spots[8]],
      [@spots[0], @spots[4], @spots[8]],
      [@spots[2], @spots[4], @spots[6]],
    ]
  end

  def draw
    puts [
      "==+===+==",
      "#{@spots[0]} | #{@spots[1]} | #{@spots[2]}",
      "==+===+==",
      "#{@spots[3]} | #{@spots[4]} | #{@spots[5]}",
      "==+===+==",
      "#{@spots[6]} | #{@spots[7]} | #{@spots[8]}",
      "==+===+==",
    ].join("\n")
  end

  def change_spot(player, spot=nil, error=nil)
    if available_spot? spot
      @spots[spot] = PLAYER_MARK[player] 
    else
      spot = Input::Game.choose_move(player, error)
      spot = spot.to_i
      change_spot(player, spot, "Position already filled!")
    end
  end

  def available_spot? position
    if position
      position = position.to_i
      true if @spots[position] != "X" && @spots[position] != "O"
    end
  end

  def available_spot_option? position
    Input::valid_option? position
  end
end
