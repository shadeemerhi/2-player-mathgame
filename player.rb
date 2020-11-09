class Player

  attr_accessor :name, :lives
  
  def initialize(name)
    @name = name
    @lives = 3
    @alive = true
  end

  def alive?
    self.lives != 0
  end
end