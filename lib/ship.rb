
class Ship

  attr_reader :position
  attr_accessor :hits
  attr_accessor :sunk

  def initialize position, direction
    @position = position
    @direction = direction
    @hits = 0
    @sunk = false
    @size = 1
  end

  def hit
  	times_hit
  	sink if @hits == @size
  	:hit
  end

  def miss
    :miss
  end

  def sink
    @sunk = true
  end

  def sunk?
  	@sunk
  end

  def times_hit
  	@hits += 1
  end

end