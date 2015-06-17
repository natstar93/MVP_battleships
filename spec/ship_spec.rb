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

  it 'can be missed' do
    ship = Ship.new "A1"
    expect(ship.miss "B1").to eq 'Miss'
  end

  it 'will not be hit when it is missed' do
    ship = Ship.new "A1"
    expect(ship.miss "A1").to eq 'Miss'  
    expect(ship.second_hit "A1").to eq 'No more chance' 
  end

  it 'is not sunk initially' do
  	ship = Ship.new "A1"
    expect(ship.sunk).to eq false
  end

  it 'can be sunk' do
    ship = Ship.new "A1"
    ship.sink
    expect(ship).to be_sunk
  end

end
