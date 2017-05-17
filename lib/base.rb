# For managing resources
class Base
  attr_reader :barricade_health
  STARTING_HEALTH = 100

  def initialize
    @water_supply = true
    @reserve_water = 10
    @barricade_health = STARTING_HEALTH
  end

  def water_supply?
    @water_supply
  end
end
