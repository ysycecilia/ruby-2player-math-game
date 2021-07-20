class GamePlayer
  attr_accessor :lives :name
  def initialize(name)
    @lives = 3
    @name = name
  end

  def wrongAnswer
    @lives -= 1
  end


end


