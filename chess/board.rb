require_relative "pieces"
require_relative "display"


class Board

  attr_reader :rows

  def initialize
    @sentinel = NullPiece.instance
    board_creator
  end



  def piece_map


  end

  def [](pos)
    raise "invalid position" unless valid_pos?(pos)
    x, y = pos
    @rows[x][y]
  end

  def []=(pos, piece)
    raise "invalid position" unless valid_pos?(pos)
    x, y = pos
    @rows[x][y] = piece
  end

  def move_piece(start_pos, end_pos)

    raise "No Piece Available" if self[start_pos].empty?
    raise "Piece is already there" if !self[end_pos].empty?

    # move piece to end_pos and set start_pos back to NullPiece(sentinel)
    self[end_pos] = self[start_pos]
    self[start_pos] = sentinel


    nil
  end

  def valid_pos?(pos)
    pos.all? { |coord| coord.between?(0, 7) }
  end

  def add_piece(piece, pos)

    self[pos] = piece
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



  private

  attr_reader :sentinel

  def board_creator
    @rows = Array.new(8) { Array.new(8, sentinel) }

    [:white, :black].each do |color|
      fillbackrow(color)
      fill_pawns_row(color)
    end

  end

  def fillbackrow(color)

    back_pieces = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]

    i = color == :white ? 7 : 0

    back_pieces.each_with_index do |piece_class, j|
      piece_class.new(color, self, [i, j])
    end
  end

  def fill_pawns_row(color)

    i = color == :white ? 6 : 1
    8.times {|j| Pawn.new(color, self, [i, j])}

  end


end
