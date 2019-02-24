module Input
  class Game

    def self.choose_move player
      print ">> Player #{player}: "
      gets.chomp
    end

  end
end