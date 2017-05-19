require 'map'

describe Map do
  let(:map) { described_class.new }

  it 'starts with all locations available to visit' do
    expect(map.unvisited_locations).to eq Map::STARTING_NUMBER_OF_AREAS
  end
end
