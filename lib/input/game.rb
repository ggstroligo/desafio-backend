module Input
  class Game

    def self.choose_move player, error = nil, option = nil
      puts "#{error}"
      puts "Player #{player}:"
      print ">> "
      option = gets.chomp

      return option if Input::valid_option? option

      self.choose_move(player, "Invalid position!", option)
    end

  end
end