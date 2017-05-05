class Survivor
  attr_reader :health, :hunger, :weapons, :mood, :infected

  MAX_HEALTH = 100

  def initialize
    @health = MAX_HEALTH
    @hunger = 10
    @weapons = []
    @mood = :fine
    @infected = false
  end
end
