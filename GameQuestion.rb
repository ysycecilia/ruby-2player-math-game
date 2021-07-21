# picking two numbers between 1 and 20
class GameQuestion
  attr_accessor :answer

  def initialize 
    @answer = 0  
  end

  def askQuestion
    a = rand(1..20)
    b = rand(1..20)
    @answer = a + b
    puts "what does #{a} plus #{b} equal?"
  end

  def answerCorrect?(input)
    if input.to_i == answer
      return true
    end
 
    return false
  end
  
end

# q1 = GameQuestion.new 
# q1.askQuestion
# puts q1.answer
# puts q1.answerCorrect?(gets.chomp)