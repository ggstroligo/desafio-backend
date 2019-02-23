module Input
  class MainMenu
    def self.choose_mode
      system("clear")
      puts [
        "Tic Tac Toe",
        "Choose mode",
        "1 - Player vs Player",
        "2 - Player vs Computer",
        "3 - Computer vs Computer"
      ].join("\n")

      gets.chomp
    end

    def self.choose_difficulty
      system("clear")
      puts [
        "Tic Tac Toe",
        "Choose difficulty",
        "1 - Adept",
        "2 - Expert",
        "3 - Master"
      ].join("\n")

      gets.chomp
    end
  end
end