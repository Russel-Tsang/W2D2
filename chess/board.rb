require_relative "piece"
require_relative "nullpiece"
require_relative "piece"
require_relative "rook"
require_relative "knight"
require_relative "bishop"
require_relative "queen"
require_relative "king"

require "byebug"
require "colorize"


class Board
  attr_accessor :board, :sentinel
  
  def initialize
    @board = make_board
    @sentinel = Nullpiece.instance
    populate
  end

  def [](pos)
    row, col = pos
    @board[row][col]
  end

  def []=(pos, value)
    row, col = pos
    @board[row][col] = value
  end

  def make_board
    array = Array.new(8) { Array.new(8){self.sentinel} }
  end

  def populate
    (0..7).each do |row_i|
      (0..7).each do |col_i|
        case [row_i, col_i]
        when [0,0], [0,7]
          self[[row_i, col_i]] = Rook.new(:white, self.board, [row_i, col_i])
        when [0,1], [0,6]
          self[[row_i, col_i]] = Knight.new(:white, self.board, [row_i, col_i])
        when [0,2], [0,5]
          self[[row_i, col_i]] = Bishop.new(:white, self.board, [row_i, col_i])
        when [0,3]
          self[[row_i, col_i]] = Queen.new(:white, self.board, [row_i, col_i])
        when [0,4]
          self[[row_i, col_i]] = King.new(:white, self.board, [row_i, col_i])
        end
      end
    end
  end

  def add_piece(piece, pos)
    self[[pos]] = piece
  end

  def self.valid_pos?(pos)
    row, col = pos
    row.between?(0, 7) && col.between?(0, 7)
  end

  def move_piece(start_pos, end_pos)
    # debugger
    if self[start_pos] == nil
      raise "No piece there"
    elsif self[end_pos] != nil
      raise "Spot taken"
    else
      self[end_pos] = self[start_pos]
      self[start_pos] = nil
    end
  end
end

board = Board.new
rook = Rook.new(:white, board, [3,0])
print rook.moves 