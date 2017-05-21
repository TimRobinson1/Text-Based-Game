# For managing game mechanics
class Game
  attr_reader :player, :days_survived, :difficulty, :base

  def initialize(player = Player.new, difficulty = :normal)
    @player = player
    @days_survived = 0
    @difficulty = difficulty
  end

  def new_base(base)
    @base = base
  end

  def end_day
    @days_survived += 1
    @player.survive_day
  end
end
