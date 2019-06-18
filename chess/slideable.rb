require 'byebug'

module Slideable

  @@HORIZONTAL_DIRS = [
    [0, -1],
    [0, 1],
    [1, 0],
    [-1, 0]
  ]

  @@DIAGONAL_DIRS = [
    [-1, 1],
    [1, -1],
    [-1, -1],
    [1, 1]
  ]

  def moves
    possible_moves = []
  
    horizontal_dirs.each do |dir|
      temp_pos = self.pos.dup
      until temp_pos[0] == 8 || temp_pos[0] == -1 || temp_pos[1] == 8 || temp_pos[1] == -1 
        temp_pos[0] += dir[0]
        temp_pos[1] += dir[1]
        possible_moves << temp_pos.dup
      end
    end

    possible_moves
  end

  def horizontal_dirs
    @@HORIZONTAL_DIRS
  end

  def diagonal_dirs
    @@DIAGONAL_DIRS
  end

end



