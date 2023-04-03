# Player class - Contains player info, state (lives), and methods for managing state(lose_life).

class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end
end
