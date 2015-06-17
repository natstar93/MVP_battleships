require_relative 'ship'

class Board

  attr_accessor :ships
  attr_accessor :hits
  attr_accessor :misses

  def initialize
   @ships = []
   @hits = []
   @misses = []

   # #          A   B   C   D   E   F   G   H   I   J
   # @grid = [['w','w','w','w','w','w','w','w','w','w'],
   #          ['w','w','w','w','w','w','w','w','w','w'],
   #          ['w','w','w','w','w','w','w','w','w','w'],
   #          ['w','w','w','w','w','w','w','w','w','w'],
   #          ['w','w','w','w','w','w','w','w','w','w'],
   #          ['w','w','w','w','w','w','w','w','w','w'],
   #          ['w','w','w','w','w','w','w','w','w','w'],
   #          ['w','w','w','w','w','w','w','w','w','w'],
   #          ['w','w','w','w','w','w','w','w','w','w'],
   #          ['w','w','w','w','w','w','w','w','w','w'],]
   # #@ships = {'destroyer' => 2, 'cruiser' => 3, 'submarine' => 3, 'battleship' => 4, 'aircraft carrier' => 5} #Why can't we use the symbol creator?
   # @alphabet = ('a'..'j').to_a

  end

  def place ship
    @ships << ship
  end

  def strike position
    if (@ships.collect{|x| x.position}.include?(position)) 
      report_hit position
      :hit
    else
      report_miss position
      :miss
    end
     # 
  end
  
  def report_hit position
    @hits << @ships.delete_at(@ships.index { |ship| position })
  end

  def report_miss position
    @misses << position
  end

  def all_sunk?
     (@ships.length == 0) ? true : false
  end

end
