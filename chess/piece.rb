class Piece
  attr_accessor :color, :board, :pos

  def initialize
    @color = color
    @board = board
    @pos = []
  end

  def to_s

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
