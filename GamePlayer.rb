# start with 3 lives, lose 1 when give wrong answer
class GamePlayer
  attr_accessor :lives, :name
  def initialize(name)
    @lives = 3
    @name = name
  end

end


