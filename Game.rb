# Game will consist of the flow and will be a place
#   to store variables: 
#     - players
#     - questions
#     - turns

class Game

  def gameOver?(player)
    player.lives == 0 ? true : false
  end

  def showWinner(players)
    winner = 0
    players.each do |player|
      winner = player if player.lives > 0
    end
    puts "Player #{winner.id} is the winner with #{winner.points} points!"
  end

  def endTurnScores(players)
    puts "----- ------- -----"
    players.each do |p| 
      puts "Player #{p.id}: #{p.lives}/3 lives - #{p.points}"
    end
  end

end