require_relative "piece"
require_relative 'slideable'
# require_relative 'board'

class Queen < Piece
  include Slideable
  
  def symbol
    "Q".colorize(color)
  end

end