require 'game'

describe Game do
  let(:game) { described_class.new }
  let(:base) { double(:base) }

  it 'initializes with player class as dependency injection' do
    new_game = Game.new(:Dave)
    expect(new_game.player).to eq :Dave
  end

  it 'increases the day count after finishing the day' do
    game.end_day
    expect(game.days_survived).to eq 1
  end

  it "triggers player's #survive_day method at end of day" do
    game.end_day
    expect(game.player.hunger).to eq 9
  end

  it 'has two survivors on your side by default' do
    expect(game.survivors.length).to eq 3
  end

  it 'provides only one extra survivor on hard mode' do
    hard_game = Game.new(:Player, :hard)
    expect(hard_game.survivors.length).to eq 2
  end

  it 'provides an extra survivor on easy mode' do
    easy_game = Game.new(:Player, :easy)
    expect(easy_game.survivors.length).to eq 4
  end

  it "accepts new difficulty settings" do
    hard_game = Game.new(:Phil, :hard)
    expect(hard_game.difficulty).to eq :hard
  end

  it 'can be given a base' do
    game.new_base(base)
    expect(game.base).to eq base
  end

end
