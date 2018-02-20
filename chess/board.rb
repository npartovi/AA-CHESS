require_relative "piece"

class Board



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
end
