class GameConfig
  attr_accessor :game_mode, :difficulty, :player1, :player2
  
  PLAYER_VS_PLAYER     = "1"
  PLAYER_VS_COMPUTER   = "2"
  COMPUTER_VS_COMPUTER = "3"
  
  def initialize 
    @game_mode    = Input::MainMenu.choose_mode
    @difficulty   = Input::MainMenu.choose_difficulty if @game_mode != PLAYER_VS_PLAYER
    set_players
  end
  
  def set_players
    case @game_mode
    when PLAYER_VS_PLAYER
      system "clear"
      @player1 = Human.new
      @player2 = Human.new
      
    when PLAYER_VS_COMPUTER
      system "clear"
      @player1 = Human.new
      @player2 = Computer.new      
      
    when COMPUTER_VS_COMPUTER
      system "clear"
      @player1 = Computer.new      
      @player2 = Computer.new      
      
    end
  end

end