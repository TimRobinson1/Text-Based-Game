class Map
  attr_reader :unvisited_locations

  STARTING_NUMBER_OF_AREAS = 9

  def initialize
    @unvisited_locations = STARTING_NUMBER_OF_AREAS
  end

end
