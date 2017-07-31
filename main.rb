require './Game'
require './Player'
require './Turn'
require './Question'

MainGame = Game.new
Player1 = Player.new(1)
Player2 = Player.new(2)

players = [Player1, Player2]
gameOver = false

until gameOver do
  players.each do |player|
    puts "----- Player #{player.id}'s TURN -----"
    thisTurn = Turn.new(MainGame.nextTurn)
    
    question = Question.new
    question.askQuestion(player.id)

    answer = thisTurn.newTurn(question)
    question.verifyAnswer(answer) ? player.gainPoints: player.loseLife

    players.each do |p| 
      puts "Player #{p.id}: #{p.lives}/3 lives - #{p.points}"
    end

    gameOver = MainGame.gameOver? player
    break if gameOver
  end
end

puts "----- ---------- -----"

MainGame.showWinner(players)

puts "----- Game Over! -----"
puts "- Peace out - A Town -"
