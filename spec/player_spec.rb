require 'player'

describe Player do

  player = Player.new
 
  it 'can lose' do
    is_expected.to respond_to :lose
  end

  it 'can place ships' do
  	subject.place 'A1', :N
    expect(subject.board.ships).not_to be_empty
  end 

  it 'can tell us when a ship is hit' do
    subject.place 'A1', :N
    expect(subject.receive_hit 'A1').to eq :hit
  end

  it 'can tell us when a ship is missed' do
    subject.place 'A1', :N
    expect(subject.receive_hit 'B1').to eq :miss
  end
  
  it 'can report hit positions' do
  	subject.place 'A1', :N
    subject.receive_hit 'A1'
    expect(subject.report_hit_positions).to eq ['A1']
  end

  it 'can report miss positions' do
    subject.receive_hit 'B1'
    expect(subject.report_miss_positions).to eq ['B1']
  end

  it 'can report multiple miss positions' do
    subject.receive_hit 'A1'
    subject.receive_hit 'D3'
    expect(subject.report_miss_positions).to eq ['A1', 'D3']
  end

  it 'can report multiple miss positions' do
    subject.place 'A1', :N
    subject.place 'D3', :N
    subject.receive_hit 'A1'
    subject.receive_hit 'D3'
    expect(subject.report_hit_positions).to eq ['A1', 'D3']
  end

  it 'will lose if all ships are hit' do 
    subject.place 'A1', :N
    subject.receive_hit 'A1'
    expect(subject.lost?).to be true
  end
end