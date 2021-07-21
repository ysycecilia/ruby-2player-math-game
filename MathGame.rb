require './GamePlayer.rb'
require './GameQuestion.rb'

class MathGame 
attr_accessor :players, :current_index, :current_player, :read_lives, :read_result

  def initialize(p1, p2)
    @players = [p1, p2]
    @current_index = 0
    @current_player = @players[@current_index]
  end

  def lose_life
    @current_player.lives -= 1
  end

  def change_player
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end
  
  def read_lives
    puts "Player #{@players[0].name}: #{@players[0].lives}/3  vs  Player #{@players[1].name}: #{@players[1].lives}/3"
  end

  def read_result
    @players.delete_at(@current_index)
    puts "Player #{@players[0].name} wins with a score of #{@players[0].lives}/3"
  end

end