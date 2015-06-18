require_relative 'ship'

class Board

  attr_accessor :ships
  attr_accessor :hits
  attr_accessor :misses

  def initialize
   @ships = []
   @hits = []
   @misses = []
  end

  def place ship

    if (@ships.collect{|x| x.position}.include?(ship.position)) 
      fail 'Position occupied'
    else
      @ships << ship
    end
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
    @ships.delete_at(@ships.index { |ship| ship.position })
    @hits << position
  end

  def report_miss position
    @misses << position
  end

  def all_sunk?
     (@ships.length == 0) ? true : false
  end

end
