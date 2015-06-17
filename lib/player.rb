require_relative 'board'
require_relative 'ship'

class Player

	attr_accessor :board

	def initialize board
		@board = board.new
	end

	def lose
		@lose = lose
	end

	def place ship, position, direction
		self.board.ships << ship.new(position, direction)
		"Ships are on the board"
	end

end

