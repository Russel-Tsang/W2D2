require_relative "piece"
require "byebug"
class Board
  attr_accessor :board

  def initialize
    @board = make_board
  end

  def make_board
    array = Array.new(8) { Array.new(8){nil} }
    (0..7).each do |row|
      if row < 2 || row > 5
        array[row].map! { |ele| Piece.new }
      end
    end
    array
  end

  def [](pos)
    row, col = pos
    @board[row][col]
  end

  def []=(pos, value)
    row, col = pos
    @board[row][col] = value
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

