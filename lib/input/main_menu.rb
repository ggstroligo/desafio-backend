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
        "1 - Novice",
        "2 - Adept",
        "3 - Expert",
        "4 - Master"
      ].join("\n")

      option = Input::MainMenu.input_label("difficulty (1-4)", error)

      return option if Input::valid_option?(option, 1..4)      
      self.choose_mode option, "Invalid difficulty!"  
    end

  end
end