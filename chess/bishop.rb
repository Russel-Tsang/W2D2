require_relative "piece"

class Bishop < Piece
  def symbol
    "B".colorize(color)
  end

  protected
  def move_dirs

  end
end