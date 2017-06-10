require 'survivor'

describe Survivor do
  let(:survivor) { described_class.new }

  it 'starts with max health' do
    expect(survivor.health).to eq Survivor::MAX_HEALTH
  end
end
