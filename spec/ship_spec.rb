require 'ship'

describe Ship do
  it 'has position when created' do
    ship = Ship.new "A1"
    expect(ship.position).to eq "A1"
    # expect(subject).to respond_to(:initialize).with(1).argument
  end




end
