
class Piece
  attr_reader :color, :pos
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos

  end

  def to_s
    self.value
  end

  def empty?
    # self.value ==  
  end

  def valid_moves
    
  end

  def pos=(val)
    row, col = val
    @pos = [row, col]
  end

  def symbol
    " "
  end

end