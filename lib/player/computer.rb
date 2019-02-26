module Player
  class Computer
    
    def initialize(player, board)
      @board = board
      @player_number = player
      @oponent_number  = (@player_number == 1) ? 2 : 1
    end

    def thinking
      word = ["hmm", "hmmmm", "well", "maybe", "i think it's"].sample
      print "\nPlayer #{@player_number}: #{word}"
      think = rand(2..5)
      think.times.each do |t|
        print "."
        sleep 0.5
      end
    end

    def make_the_move
      eval_board
      thinking
    end
    
    def eval_board
      
      spot=nil

      if @board.spots[4] == "4"
        spot = 4
        @board.change_spot(@player_number, spot)
      else
        spot = get_best_move
        if @board.spots[spot] != "X" && @board.spots[spot] != "O"
          @board.change_spot(@player_number, spot)
        else
          spot = nil
        end
      end

      eval_board unless spot
    end
    
    def get_best_move
      available_spaces    = get_available_spaces
      best_move           = nil
      best_offensive_move = nil
      best_defensive_move = nil

      available_spaces.each do |space|
        best_offensive_move = simulate_next_move(space, @player_number)  || best_offensive_move
        best_defensive_move = simulate_next_move(space, @oponent_number) || best_defensive_move
      end

      best_move = best_offensive_move || best_defensive_move
      if best_move
        return best_move
      else
        n = rand(0..available_spaces.count)
        return available_spaces[n].to_i
      end
    end

    def simulate_next_move(spot, player)
      spot = spot.to_i
      simulate_move(player, spot)
    end

    def simulate_move(player, spot)

      @board.change_spot(player, spot)
      best_move = spot.to_i if Game.over_condition?(@board)

      return_spot_to_real_value(spot)

      best_move

    end

    def return_spot_to_real_value(spot)
      spot = spot.to_i
      @board.spots[spot] = spot.to_s
    end

    def get_available_spaces
      available_spaces = []
      @board.spots.each_with_index do |space, key|
        if space != "X" && space != "O"
          available_spaces << key
        end
      end

      available_spaces
    end

  end
end