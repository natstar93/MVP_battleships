require 'board'

describe Board do
  it 'can have a ship placed on it' do
    expect(subject).to respond_to :place
  end
end