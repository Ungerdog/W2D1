class Piece
  attr_accessor :color, :board, :pos

  def initialize(color, pos = [])
    @color = color
    @pos = pos
    @board = board
  end

  def to_s
    "P"
  end

  def empty?

  end

  def pos=(value)
    pos = value
  end

  def valid_moves
    moves
  end

  def move_into_check?(end_pos)

  end

  def symbol

  end
end
