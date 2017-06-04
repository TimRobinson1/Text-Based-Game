require 'engine'

describe Engine do
  it { is_expected.to respond_to :process_commands }

end
