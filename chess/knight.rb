require_relative "piece"
require_relative 'slideable'
# require_relative 'board'

class Knight < Piece
  include Slideable
  
  def symbol
    "K".colorize(color)
  end

end
