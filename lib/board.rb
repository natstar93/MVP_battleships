require_relative 'ship'

class Board

  attr_accessor :ship_array

  def initialize
    @ship_array = []
  end

  def place ship
    @ship_array << ship.position
  end

  def strike position

    if @ship_array.include?(position)
      "Hit"
    else
      "Missed hit"
    end
  end


end
