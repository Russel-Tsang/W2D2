require_relative 'piece'
require 'singleton'
class Nullpiece < Piece
  include Singleton
  def initialize

  end

  def moves
    []
  end
end