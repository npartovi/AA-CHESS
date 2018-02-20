require_relative "rook"
require_relative "knight"
require_relative "bishop"
require_relative "king"
require_relative "queen"
require_relative "pawn"



class Board

  attr_reader :rows

  # [Rook, Bishop, Knight ... Rook].map do |piece_class|
  #   piece_class.new
  # end
  #
  # class Cat
  # end
  #
  # class Dog
  # end
  #
  # animals = [Cat, Dog]
  # pets = animals.map do |animal_class|
  #   animal_class.new
  # end
  # [Cat.new, Dog.new]

  def initialize
    @sentinel = nil
    @rows = Board.board_creator
  end

  def self.board_creator
    board = Array.new(8) { Array.new(8) }
  end

  def piece_map

    back_pieces = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]

  
    (0..7).each do |i|
      @rows[0][i] = black_objects[i]
      @rows[7][i] = white_objects[i]
    end




  end

  def [](pos)
    x, y = pos
    @rows[x][y]
  end

  def []=(pos, val)
    x, y = pos
    @rows[x][y] = val
  end

  def move_piece(color, start_pos, end_pos)

  end

  def valid_pos?(pos)

  end

  def add_piece(piece, pos)

  end

  def checkmate?(color)

  end

  def in_check?(color)

  end

  def find_king(color)

  end

  def pieces

  end

  def dup

  end

  def move_piece(color, start_pos, end_pos)

  end


  private
end
