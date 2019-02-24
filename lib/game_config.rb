class GameConfig
  attr_accessor :game_mode, :difficulty, :player1, :player2
  
  PLAYER_VS_PLAYER     = "1"
  PLAYER_VS_COMPUTER   = "2"
  COMPUTER_VS_COMPUTER = "3"
  
  def initialize(board)
    @board        = board
    @game_mode    = Input::MainMenu.choose_mode
    @difficulty   = Input::MainMenu.choose_difficulty if @game_mode != PLAYER_VS_PLAYER
    set_players
  end
  
  def set_players
    case @game_mode
    when PLAYER_VS_PLAYER
      #system "clear"
      @player1 = Player::Human.new 1, @board
      @player2 = Player::Human.new 2, @board
      
    when PLAYER_VS_COMPUTER
      #system "clear"
      @player1 = Player::Human.new 1, @board
      @player2 = Player::Computer.new 2, @board      
      
    when COMPUTER_VS_COMPUTER
      #system "clear"
      @player1 = Player::Computer.new 1, @board      
      @player2 = Player::Computer.new 2, @board      
      
    end
  end

end