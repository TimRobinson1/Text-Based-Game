require 'survivor'

describe Survivor do
  let(:survivor) { described_class.new }

  it 'starts with 100 health' do
    expect(survivor.health).to eq 100
  end
end
