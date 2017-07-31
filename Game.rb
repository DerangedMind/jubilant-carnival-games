# Game will consist of the flow and will be a place
#   to store variables: 
#     - players
#     - questions
#     - turns

class Game

  def initialize
    @@currentTurn = 0
  end

  def nextTurn
    @@currentTurn += 1
  end

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

end