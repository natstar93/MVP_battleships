require_relative 'ship'

class Board

  attr_accessor :ships

  def initialize
   @ships = []

   #          A   B   C   D   E   F   G   H   I   J
   @grid = [['w','w','w','w','w','w','w','w','w','w'],
            ['w','w','w','w','w','w','w','w','w','w'],
            ['w','w','w','w','w','w','w','w','w','w'],
            ['w','w','w','w','w','w','w','w','w','w'],
            ['w','w','w','w','w','w','w','w','w','w'],
            ['w','w','w','w','w','w','w','w','w','w'],
            ['w','w','w','w','w','w','w','w','w','w'],
            ['w','w','w','w','w','w','w','w','w','w'],
            ['w','w','w','w','w','w','w','w','w','w'],
            ['w','w','w','w','w','w','w','w','w','w'],]
   #@ships = {'destroyer' => 2, 'cruiser' => 3, 'submarine' => 3, 'battleship' => 4, 'aircraft carrier' => 5} #Why can't we use the symbol creator?
   @alphabet = ('a'..'j').to_a

  end

  def place ship
    @ships << ship
  end

  def strike position
    if (@ships.collect{|x| x.position}.include?(position)) 
      @ships.pop
      "Hit"
    else
      "Missed hit"
    end
     # 
  end

  def all_sunk?
     'All sunk' if (@ships.length == 0) 
  end
  def not_all_sunk?
     'Not all sunk' if (@ships.length != 0) 
  end

end
