
class Ship

  attr_reader :position

  def initialize position
    @position = position
    @hits = 0
  end

  def hit position
  	@hits += 1
  end

end