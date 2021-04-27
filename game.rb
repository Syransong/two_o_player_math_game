class Game

  def initialize
    @p1 = Player.new
    @p2 = Player.new
  end

  def start
    puts "Let the game begin!"
    game_loop
  end
  
  def game_loop
    if @p1.is_alive? || @p2.is_alive?
      @p1.turn
      @p2.turn
      current_status
      puts "----- NEW TURN -----"
      game_loop
    else 
      puts "----- GAME OVER -----"
    end
  end

  def current_status
    puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
  end
end


