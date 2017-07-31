# Each player in the game will be composed of
# a player object.

# Each player has:
#   - lives
#   - points

class Player

  attr_accessor(:id, :points, :lives)

  def initialize(id)
    @id = id
    @points = 0
    @lives = 3
  end

  def loseLife
    @lives -= 1
    puts "Not even close, baby!"
  end

  def gainPoints
    @points += 10
    puts "You are a math genius!"
  end

end