# For keeping track of player stats
class Player
  attr_reader :health, :weapons, :hunger

  MAX_HEALTH = 100
  MAX_HUNGER = 10

  def initialize(name = 'player', health = MAX_HEALTH, hunger = MAX_HUNGER)
    @health = health
    @hunger = hunger
    @weapons = []
  end

  def survive_day
    @hunger -= 1
  end
end
