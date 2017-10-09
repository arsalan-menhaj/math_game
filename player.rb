class Player

  attr_reader :id, :lives

  def initialize(id, lives)
    @id = id
    @lives = lives
  end

  def lose_life
    @lives = @lives - 1
  end

  def reset_lives(number)
    @lives = number
  end

end