require_relative 'ship'

class Board

  def initialize
    @ship_array = []
  end

  def place ship
    @ship_array << ship

  end

  def strike position
  end

end
