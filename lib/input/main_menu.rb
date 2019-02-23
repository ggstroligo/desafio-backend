module Input
  class MainMenu
    def self.chooseMode
      system("clear")
      puts [
        "Tic Tac Toe",
        "Choose mode",
        "1 - Player vs Player",
        "2 - Player vs Computer",
        "3 - Computer vs Computer"
      ].join("\n")

      mode = gets.chomp.to_i
    end

    def self.chooseDifficulty
      system("clear")
      puts [
        "Tic Tac Toe",
        "Choose difficulty",
        "1 - Adept",
        "2 - Expert",
        "3 - Master"
      ].join("\n")

      mode = gets.chomp.to_i
    end
  end
end