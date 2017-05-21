# For managing resources
class Base
  attr_reader :barricade_health, :location
  STARTING_HEALTH = 100

  def initialize(location = "an old house")
    @location = location
    @water_supply = true
    @reserve_water = 10
    @barricade_health = STARTING_HEALTH
  end

  def water_supply?
    @water_supply
  end
end
