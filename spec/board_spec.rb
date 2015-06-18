require 'board'

describe Board do

  let(:ship) {double :ship, position: "A1"}

  it{ is_expected.to respond_to :place }

  it 'can have a ship' do
    expect(subject.place(ship).length).to eq 1
  end

  it 'reports missed hit when no ship at position' do
    expect(subject.strike "A1").to eq :miss
  end

  it 'can receive a hit on a ship' do
    subject.place ship
    #allow(:ship).to receive(:position) {'A1'}
    expect(subject.strike 'A1').to eq :hit
  end

  it 'can report if all ships are sunk' do
    subject.place ship
    subject.strike "A1"
    expect(subject.all_sunk?).to eq true
  end

  it 'can report if not all ships are sunk' do
    subject.place ship
    expect(subject.all_sunk?).to eq false
  end

  it 'does not allow ships to overlap' do
    subject.place ship
    expect{ subject.place ship }.to raise_error 'Position occupied'
  end
end