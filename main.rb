require './GamePlayer.rb'
require './MathGame.rb'
require './GameQuestion.rb'

puts "Player 1, what's your name?"
name1 = gets.chomp.to_s
player1 = GamePlayer.new(name1)

puts "Player 2, what's your name?"
name2 = gets.chomp.to_s
player2 = GamePlayer.new(name2)

game = MathGame.new(player1, player2)



while (game.players[0].lives > 0 && game.players[1].lives > 0) do

  question = GameQuestion.new
  puts "Player #{game.current_player.name}: #{question.askQuestion} "
  answer = gets.chomp.to_i
  result = question.answerCorrect?(answer)

  # if (!question.answerCorrect?(answer))
    if ( !result && game.current_player.lives == 1 ) 
      game.read_result
      puts "----- GAMR OVER -----"
      puts "Good bye!"
      return

    else
      game.lose_life
      puts "Player #{game.current_player.name}: Seriously? No!"
      game.read_lives
      puts "----- NEW TURN -----"
    end
  # end

  if (result == true)
    puts "Player #{game.current_player.name}: YES! You are correct."
    game.read_lives
    puts "----- NEW TURN -----"
  end

  game.change_player

end



