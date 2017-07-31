# Determines what happens when it's a player's turn.

# If it is a player's turn, ask them a question
#   and wait for a response.

# Will contain player I/O

class Turn

  def initialize(turn)
    @turn = turn
  end

  def newTurn(question)
    print "> "
    gets.chomp
  end

end