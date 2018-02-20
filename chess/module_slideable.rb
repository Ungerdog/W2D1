module Slideable
  HORIZONTAL_DIRS = [[-1, 0], [1, 0]]
  DIAGONAL_DIRS = [[1, -1], [-1, 1], [1, 1], [-1, -1]]

  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves
    HORIZONTAL_DIRS.concat(DIAGONAL_DIRS)
  end
end
