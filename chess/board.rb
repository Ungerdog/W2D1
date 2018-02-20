require_relative 'piece.rb'

class Board

  def self.default_grid
    @grid = Array.new(8) { Array.new(8) }
  end

  def initialize(grid = Board.default_grid)
    @grid = grid
  end

  def populate
    (0..7).each { |y| self[0][y] = "knight" }
    # (0..7).each { |y| @grid[1][y] = Piece.new } #with actual values
    # (0..7).each { |y| @grid[6][y] = Piece.new } #for each piece
    # (0..7).each { |y| @grid[7][y] = Piece.new }
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[pos] = val
  end

  def move_piece(color, start_pos, end_pos)

  end

end
