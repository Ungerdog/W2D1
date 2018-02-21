class Piece
  attr_accessor :color, :board, :pos

  def initialize(color, pos = [])
    @color = color
    @pos = pos
    @board = board
  end

  def to_s
  "#{symbol}""
  end

  def empty?(pos)
    pos.is_a?(NullPiece.instance) ? true : false
  end

  def pos=(value)
    pos = value
  end

  def valid_moves
    moves
  end

  def move_into_check?(end_pos)

  end
end
