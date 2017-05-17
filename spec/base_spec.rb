require 'base'

describe Base do
  let(:base) { described_class.new }

  it 'starts with a water supply' do
    expect(base.hasWater?).to eq true
  end

  it 'starts with full baricade health' do
    expect(base.barricade_health).to eq Base::STARTING_HEALTH
  end
end
