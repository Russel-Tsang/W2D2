require_relative "piece"
require_relative 'slideable'

class Rook < Piece
  include Slideable
  
  def symbol
    "R".colorize(color)
  end

  def valid_moves
    # arr = move
    # arr.select do |move|

    # end
  end

  def empty?(pos)
    self.board[[pos]].is_a?(Nullpiece)
  end

  protected
  def move_dirs
    
  end
end
