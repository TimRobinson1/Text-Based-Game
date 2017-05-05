require 'player'

describe Player do
  let(:player) { described_class.new }

  it 'starts with max health' do
    expect(player.health).to eq Player::MAX_HEALTH
  end

  it 'can have starting health set lower manually' do
    weak_player = Player.new(50, 10, [])
    expect(weak_player.health).to eq 50
  end
end
