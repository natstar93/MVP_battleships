require 'ship'

describe Ship do
  ship = Ship.new 'A1', ':N'

  it 'has position when created' do
    expect(ship.position).to eq "A1"
  end

  it 'can be hit' do
  	expect(ship.hit).to eq :hit
  end

  it 'can record number of hits' do
  	ship = Ship.new 'A1', ':N'
  	expect(ship.times_hit).to eq 1
  end

  it 'can be missed' do
    expect(ship).to respond_to :miss
  end

  it 'will not be hit when it is missed' do
    ship.miss
    expect(ship.miss).to eq :miss  
  end

  it 'is not sunk initially' do
    ship = Ship.new 'A1', ':N'
    expect(ship).to_not be_sunk
  end

  it 'can be sunk' do
    ship.sink
    expect(ship).to be_sunk
  end

end
