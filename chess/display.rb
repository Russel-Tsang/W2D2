require 'colorize'
require_relative 'board'
require_relative 'cursor'

class Display
  attr_reader :board

  def initialize(board)
    @cursor = Cursor.new([0,0], Board.new)
    @board = board
  end

  def render
    @board.board.each_with_index do |row, row_i|
      temp_row = []
      row.each_with_index do |square, i|
        bg = 
          if i.even?
            temp_row << ' X '.colorize( :background => :blue)
          else
            temp_row << ' X '.colorize( :background => :red)
          end        
      end
      if row_i.even?
          puts temp_row.join("")
      else
        puts temp_row.reverse.join("")
      end
    end
  end
end

b = Board.new
disp = Display.new(b)
disp.render