class Survivor
  attr_reader :health, :hunger, :weapons, :mood, :infected
  def initialize
    @health = 100
    @hunger = 10
    @weapons = []
    @mood = :fine
    @infected = false
  end
end
