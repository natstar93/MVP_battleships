require 'board'

describe Board do

  it{ is_expected.to respond_to :place }

  it 'can have a ship' do
    ship = double :ship, position: "A1"
    expect((subject.place(ship)).length).to eq 1
  end

end