module Input
  class MainMenu


    MENU_HEADER = [
      "@@@@@@@@@@@@@@@@@@@@@",
      "@@                 @@",
      "@@   Tic Tac Toe   @@",
      "@@  >>Main Menu<<  @@",
      "@@                 @@",
      "@@@@@@@@@@@@@@@@@@@@@",
      "\n"
    ].join("\n")

    def self.choose_mode option = nil, error = nil
      system("clear")
      puts [
        MENU_HEADER,
        "Choose mode",
        "1 - Player vs Player",
        "2 - Player vs Computer",
        "3 - Computer vs Computer"
      ].join("\n")

      puts "\n#{error}"
      puts "Choose a valid mode (1-3): "
      print ">> "
      option = gets.chomp
      
      return option if Input::valid_option? option, 1..3
      
      self.choose_mode option, "Invalid mode!"
    end

    def self.choose_difficulty
      system("clear")
      puts [
        MENU_HEADER,
        "Choose difficulty",
        "1 - Adept",
        "2 - Expert",
        "3 - Master"
      ].join("\n")

      gets.chomp
    end
  end
end