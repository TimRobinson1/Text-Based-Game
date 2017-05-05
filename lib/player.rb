class Player
  attr_reader :health, :weapons

  MAX_HEALTH = 100
  MAX_HUNGER = 10

  def initialize(health = MAX_HEALTH, hunger = MAX_HUNGER, weapons = [])
    @health = health
    @hunger = hunger
    @weapons = weapons
  end
end
