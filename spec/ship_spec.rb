require 'ship'

describe Ship do
  it 'has position when created' do
    ship = Ship.new "A1"
    expect(ship.position).to eq "A1"
  end

  it 'can be hit' do
  	ship = Ship.new "A1"
  	expect(ship.hit "A1").to eq 1
  end

  it 'can record number of hits' do
  	ship = Ship.new "A1"
  	expect(ship.hit "A1").to eq 1
  end
end
