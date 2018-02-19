class Board

  def initialize
    @sentinel = nil
    @rows = rows
  end

  def [](pos)
    x, y = pos
    @board[x][y]
  end

  def[]=(pos, val)
    x, y = pos
    @board[x][y] = val
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
