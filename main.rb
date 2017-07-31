require './Game'
require './Player'
require './Question'

MainGame = Game.new
Player1 = Player.new(1)
Player2 = Player.new(2)

players = [Player1, Player2]
gameOver = false

until gameOver do
  players.each do |player|
    puts "===== Player #{player.id}'s TURN ====="
    
    question = Question.new
    question.ask(player.id)
    answer = question.answer
    question.verify(answer) ? player.gainPoints : player.loseLife

    MainGame.endTurnScores(players)

    gameOver = MainGame.gameOver? player
    break if gameOver
  end
end

puts "======================"

MainGame.showWinner(players)

puts "----- Game Over! -----"
puts "- Peace out - A Town -"
