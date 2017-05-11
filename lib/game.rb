class Game
  attr_reader :player, :days_survived

  def initialize(player = Player.new)
    @player = player
    @days_survived = 0
  end

  def end_day
    @days_survived += 1
  end
end
