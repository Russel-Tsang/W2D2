require_relative "piece"

class Pawn < Piece
  def symbol
    "P".colorize(color)
  end
end