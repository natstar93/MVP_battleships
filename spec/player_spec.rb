require 'player'

describe Player do

  player = Player.new
 
  it 'can lose' do
    is_expected.to respond_to :lose
  end

  # ••HELP ME!!••
  it 'can place ships' do
  	ship = double :ship
    allow(ship).to receive(:new) {ship 'A1', :N} 
    #expect(subject.place(ship, 'A1', :N)).to eq ship
  end 

  it 'can tell us when a ship is hit' do
    
  end
  
  it 'can report hit positions' do
  	
  end

  it 'can report miss positions'

  it 'will lose if all ships are hit' do 
  	expect(subject.lost?).to eq true
  end
end