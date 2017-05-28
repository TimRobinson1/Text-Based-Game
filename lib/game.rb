require_relative 'survivor'

# For managing game mechanics
class Game
  attr_reader :player, :days_survived, :difficulty, :base, :survivors

  def initialize(player = Player.new, difficulty = 'normal')
    @player = player
    @days_survived = 0
    @difficulty = difficulty
    @survivors = [@player] + starting_survivors
  end

  def new_base(base)
    @base = base
  end

  def end_day
    @days_survived += 1
    @player.survive_day
  end

  private

  def starting_survivors
    if @difficulty == 'hard'
      [Survivor.new]
    elsif @difficulty == 'normal'
      [Survivor.new, Survivor.new]
    else
      [Survivor.new, Survivor.new, Survivor.new]
    end
  end
end
