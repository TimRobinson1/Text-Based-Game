require 'game'

describe Game do
  let(:game) { described_class.new }

  it 'initializes with player class as dependency injection' do
    new_game = Game.new('Dave')
    expect(new_game.player).to eq 'Dave'
  end

  it 'increases the day count after finishing the day' do
    game.end_day
    expect(game.days_survived).to eq 1
  end

  it "triggers player's #survive_day method at end of day" do
    game.end_day
    expect(game.player.hunger).to eq 9
  end
end
