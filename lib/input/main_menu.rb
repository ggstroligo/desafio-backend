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

    def self.choose_mode(option = nil, error = nil)
      system("clear")
      puts [
        MENU_HEADER,
        "Choose mode",
        "1 - Player vs Player",
        "2 - Player vs Computer",
        "3 - Computer vs Computer"
      ].join("\n")

      option = Input::MainMenu.input_label("mode (1-3)", error)

      return option if Input::valid_option?(option, 1..3)      
      self.choose_mode option, "Invalid mode!"      
    end

    def self.input_label(kind, error = nil)
      puts "\n#{error}"
      puts "Choose a valid #{kind}: "
      print ">> "

      return gets.chomp
    end

    def self.choose_difficulty(option = nil, error = nil)
      system("clear")
      puts [
        MENU_HEADER,
        "Choose difficulty",
        "1 - Adept",
        "2 - Expert",
        "3 - Master"
      ].join("\n")

      option = Input::MainMenu.input_label("mode (1-3)", error)

      return option if Input::valid_option?(option, 1..3)      
      self.choose_mode option, "Invalid mode!"  
    end

  end
end