require_relative 'piece.rb'

class Board

  def self.default_grid
    Array.new(8) { Array.new(8) }
  end

  def initialize(grid = Board.default_grid)
    @grid = grid
    self.populate
  end

  def populate
    (0..7).each { |y| self[[0, y]] = Piece.instance }
    (0..7).each { |y| self[[1, y]] = Piece.instance } #with actual values
    (0..7).each { |y| self[[6, y]] = Piece.instance } #for each piece
    (0..7).each { |y| self[[7, y]] = Piece.instance }
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  def move_piece(start_pos, end_pos)
    raise StandardError, "No piece at this position." if self[start_pos] == [] # this should be checking if it's a NullPiece
    raise StandardError, "Position is already taken." if self[end_pos] == [] # this will have to check if it's an instance of a piece

    piece = self[start_pos]
    self[start_pos] = []  # set this to a NullPiece
    self[end_pos] = piece
    piece.pos = end_pos
  end

  def valid_pos?(pos)
    pos.all? { |axis| (0..7).include?(axis) }
  end

end
