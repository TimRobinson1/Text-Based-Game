class Survivor
  attr_reader :health, :hunger, :weapons, :mood, :infected

  MAX_HEALTH = 100
  MAX_HUNGER = 10

  def initialize
    @health = MAX_HEALTH
    @hunger = MAX_HUNGER
    @weapons = []
    @mood = :fine
    @infected = false
  end
end
