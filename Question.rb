# When it is a player's turn, a question will be
# generated and the player must answer it.

# If answered correctly, increases player's points.
# If incorrect, decrease player's lives

class Question

  @@maxNum = 20

  attr_reader :answer

  def initialize
    @num1 = rand(@@maxNum) + 1
    @num2 = rand(@@maxNum) + 1
    @answer = @num1 + @num2
  end

  def ask(player_id)
    puts "What does #{@num1} plus #{@num2} equal?"
  end

  def answer
    print "> "
    gets.chomp
  end

  def verify(input)
    @answer == input.to_i
  end
end