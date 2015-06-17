
class Ship

  attr_reader :position
  attr_accessor :sunk

  def initialize position, direction
    @position = position
    @direction = direction
    @hits = 0
    @sunk = false
    @size = 1
  end

  def hit position
  	@hits += 1
  	if @hits == @size
  	  sink
  	end
  	return @hits
  end

  def miss position
    'Miss'
  end

  def second_hit position
    'No more chance'
  end

  def sink
    @sunk = true
  end

  def sunk?
  	@sunk
  end

end