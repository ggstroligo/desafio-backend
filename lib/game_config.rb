# require_relative "input/main_menu.rb"

class GameConfig
    attr_accessor :gameMode, :difficulty

    def initialize()
      @gameMode   = Input::MainMenu.chooseMode
      @difficulty = @gameMode == 1 ? 0 : Input::MainMenu.chooseDifficulty
    end
end
