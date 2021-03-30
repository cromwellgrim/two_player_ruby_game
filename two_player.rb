class Player
  attr_accessor :lives
  attr_reader :name, :player

  def initialize(player)
    @lives = 3
    @player = player
    @name = player
  end

  def life_down
    self.lives -= 1
  end

  def alive?
    self.lives > 0
  end

end